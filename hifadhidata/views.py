import random
from django.shortcuts import render, redirect, reverse
from django.http import HttpResponse, HttpResponseServerError, JsonResponse
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Student, Problem, Progress, AccessWhitelist
from datetime import datetime
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Max, Sum
from django.views.decorators.cache import never_cache
from django.db import connections

def index(request):
  context = {
    'all' : Student.objects.order_by('name'),
    '2a' : Student.objects.filter(form=2, stream='A',\
            total_pass_percent__gt=0)\
            .order_by('gender', '-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index').distinct('gender'),
    '2b' : Student.objects.filter(form=2, stream='B',\
            total_pass_percent__gt=0)\
            .order_by('gender', '-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index').distinct('gender'),
    '2a_wote' : Student.objects.filter(form=2, stream='A',\
            total_pass_percent__gt=0)\
            .order_by('-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index', 'gender'),
    '2b_wote' : Student.objects.filter(form=2, stream='B',\
            total_pass_percent__gt=0)\
            .order_by('-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index', 'gender'),
  }
  return render(request, 'hifadhidata/index.html', context)

def login(request):
  if request.method == 'POST':
    student_id = request.POST.get('student_id', '')
    try:
        student = Student.objects.get(id=student_id)
        try:
            AccessWhitelist.objects.get(form=student.form, stream=student.stream)
        except ObjectDoesNotExist:
            messages.error(request, "You are not permitted to play at this time.")
            return redirect('hd.index')
    except ObjectDoesNotExist:
        messages.error(request, 'Tafutia jina lako kwanza.')
        return redirect('hd.index')
    return redirect(reverse('hd.mwanafunzi', args=[student_id]))

def mwanafunzi(request, student_id):
  student = Student.objects.get(id=student_id)
  try:
      AccessWhitelist.objects.get(form=student.form, stream=student.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('hd.index')
  if Progress.objects.filter(student_id=student_id,
          passed=False).count() == 0:
    # Innermost SELECT: Gets all problem IDs that the student has
    # already passed.
    # Next SELECT: Selects only those problems the student HASNT done
    # and randomly shuffles them.
    # Outer SELECT: Orders the shuffled problems by level, easiest first.
    open_problems = Problem.objects.raw('SELECT * FROM (\
            SELECT * FROM hifadhidata_problem WHERE \
            id NOT IN (SELECT problem_id_id FROM hifadhidata_progress WHERE \
            student_id_id = %s AND passed = True) \
            ORDER BY random()) AS a ORDER BY level;' % student_id)
    if len(list(open_problems)) > 0:
      new_problem = Progress.objects.create(
              student_id=student,
              problem_id=open_problems[0])
      new_problem.save()
    else:
      messages.error(request, 'Hakuna changamoto nyingine.')
  context = {
    'student' : student,
    'progress' : Progress.objects.filter(
        student_id=student_id).order_by('started_dtstamp')
  }
  return render(request, 'hifadhidata/mwanafunzi.html', context)

def process_qs(cursor):
    if cursor.description == None:
        # INSERTS, UPDATES, DELETES do not return a query set.
        return ("<p><center><i>(No query set returned.)</i></center></p>", None)
    l = [tuple(col[0] for col in cursor.description)]
    html = '<table class="table table-striped">'
    html += '<thead><tr>'
    for col in cursor.description:
        html += '<th>' + col[0] + '</th>'
    html += '</tr></thead><tbody>'
    for row in cursor.fetchall():
        l.append(tuple(str(col) for col in row))
        html += '<tr>'
        for col in row:
            html += '<td>' + str(col) + '</td>'
        html += '</tr>'
    html += '</tbody></table>'
    return (html, l)

def generate_required_tables_html(cursor, student_id, progress):
  html = ""
  for tname in progress.problem_id.required_tables.split(','):
    symbolic_table = tname.replace('$STUDENTID$', '')
    actual_table = tname.replace('$STUDENTID$', str(student_id))
    cursor.execute('SELECT * FROM ' + actual_table)
    qshtml, qslist = process_qs(cursor)
    html += '<h1>' + symbolic_table + '<span class="tbl-info">(' + str(len(cursor.description)) + ' columns, ' + str(cursor.rowcount) + ' rows)</span></h1>'
    html += qshtml
  return html

def initialize_changamoto(dbcursor, student_id, progress):
  problem = progress.problem_id
  if problem.is_partitioned:
     # Create the partitioned tables using the student's ID...
     try:
       dbcursor.execute(problem.partitioned_create_ddl.replace('$STUDENTID$', student_id))
     except Exception as e:
         pass # We don't care if this fails due to already existent table
     # ...and run initial load statements.
     dbcursor.execute(problem.partitioned_load_stmts.replace('$STUDENTID$', student_id))
     # Now create the partitioned solution tables...
     try:
       dbcursor.execute(problem.partitioned_create_ddl.replace(
         '$STUDENTID$', student_id + '_soln'))
     except Exception as e:
         pass # We don't care if this fails due to already existent table
     # IMPORTANT: No need to run initial soln table loads;
     # this will be done at solution checking time.
  progress.initialized = True
  progress.save()
       
@never_cache
def changamoto(request, student_id, problem_id):
  student = Student.objects.get(id=student_id)
  try:
      AccessWhitelist.objects.get(form=student.form, stream=student.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('hd.index')

  progress = Progress.objects.get(student_id=student_id, problem_id=problem_id)
  cursor = connections['hifadhidata'].cursor()

  # If this is student's first load of the challenge, initialize it.
  if not progress.initialized:
      initialize_changamoto(cursor, student_id, progress)

  # Get all rows of all required tables for display to user
  html = generate_required_tables_html(cursor, student_id, progress)

  context = {
    'student' : student,
    'progress' : progress,
    'navcolor' : "%06x" % random.randint(0, 0xFFFFFF),
    'tables_html' : html,
  }
  if context['progress'].passed == True:
      messages.error(request, 'You have already solved this problem.')
      return redirect(reverse('hd.mwanafunzi', args=[student_id]))
  return render(request, 'hifadhidata/changamoto.html', context)

@never_cache
def hongera(request, student_id, problem_id):
    prob = Problem.objects.get(id=problem_id)
    messages.success(request, 'HONGERA. Umeshinda kutatua \
            changamoto ya %s.' % prob.name);
    return redirect(reverse('hd.mwanafunzi', args=[student_id]))

# This view resets a student's code if not already passed.
def reset(request, student_id, problem_id):
  prog = Progress.objects.get(
        student_id=student_id, problem_id=problem_id)
  if not prog.passed:
      prog.latest_submission = ''
      prog.save()
  return redirect(reverse('hd.changamoto', args=[student_id, problem_id]))

@csrf_exempt
def save_code(request):
  if request.method == 'POST':
    try:
      student_id = int(request.POST.get('student_id', 0))
      problem_id = int(request.POST.get('problem_id', 0))
      latest_code = request.POST.get('latest_code', '')
      progress = Progress.objects.get(student_id=student_id,
              problem_id=problem_id)
      progress.latest_submission = latest_code
      progress.save()
      return HttpResponse("SUCCESS")
    except Exception as e:
      return HttpResponseServerError("EXCEPTION: %s" % e)
  else:
      return HttpResponseServerError("ERROR: MUST POST")


@csrf_exempt
def run_code(request):
  if request.method == 'POST':

    try:
      student_id = int(request.POST.get('student_id', 0))
      problem_id = int(request.POST.get('problem_id', 0))
      submitted_code = request.POST.get('code', '')

      problem = Problem.objects.get(id=problem_id)
      progress = Progress.objects.get(student_id=student_id,
              problem_id=problem_id)

      # Don't continue if problem already passed ; save submitted code otherwise
      if progress.passed == True:
        return HttpResponse("SUCCESS: Ignoring submission, already passed.")
      progress.latest_submission = submitted_code
    except Exception as e:
      return HttpResponseServerError("Error while preparing to check solution.")

    try:
      # Open database connection
      cursor = connections['hifadhidata'].cursor()

      # Run the student's code; return column names + succeeding records
      if problem.is_partitioned:
          # If partitioned tables involved, replace sym table name w/ actual name
          for tname in problem.required_tables.split(','):
              symbolic_table = tname.replace('$STUDENTID$', '')
              actual_table = tname.replace('$STUDENTID$', str(student_id))
              submitted_code = submitted_code.replace(symbolic_table, actual_table)
      cursor.execute(submitted_code)
      qshtml, qslist = process_qs(cursor)

      # Prepare the answer SQL for execution.
      answer_sql = problem.answer_sql
      if problem.is_partitioned:
        # If problem is partitioned, must point at partitioned solution table
        answer_sql = answer_sql.replace('$STUDENTID$', str(student_id))
        # Also must run initial load statements against solution table.
        cursor.execute(problem.partitioned_load_stmts.replace(
            '$STUDENTID$', str(student_id) + '_soln'))

      # TODO: Check if answer_SQL contains SELECT.
      # - YES: Compare qsanswerList to qsList
      # - NO: Compare SELECT * on soln table to SELECT * on required table;
      #   throw an error if there are multiple required tables
      cursor.execute(answer_sql)
      _, qsanswerList= process_qs(cursor)
      jsonresp = {
        'queryset_html' : qshtml,
        'alltables_html': generate_required_tables_html(cursor,
            student_id, progress)
      }
      if qslist == qsanswerList:
          jsonresp['result'] = 'PASS';
          # TODO: Include flag to show all tables view if no SELECT is in answer
          progress.passed = True
          progress.passed_dtstamp = datetime.now()
      else:
          jsonresp['result'] = 'FAIL';
      progress.save()
      Student.objects.get(id=student_id).update_rank()
      return JsonResponse(jsonresp)
    except Exception as e:
      return JsonResponse({
        'result': 'ERROR',
        'error_msg': 'SQL Error: {}'.format(e),
        'allables_html': generate_required_tables_html(cursor,
          student_id, progress)
      })
  else:
      return HttpResponseServerError("ERROR: MUST POST")
