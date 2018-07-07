import random
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Student, Problem, Progress, AccessWhitelist
from datetime import datetime
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Max, Sum
from django.views.decorators.cache import never_cache

def index(request):
  # NOTE: More total submissions usually indicate
  # a student was trying independently / didn't just copy
  # a solution; hence more submissions boost score.
  context = {
    'all' : Student.objects.order_by('name'),
    '1a' : Student.objects.filter(form=1, stream='A',\
            total_pass_percent__gt=0)\
            .order_by('gender', '-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index').distinct('gender'),
    '1b' : Student.objects.filter(form=1, stream='B',\
            total_pass_percent__gt=0)\
            .order_by('gender', '-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index').distinct('gender'),
    '1a_wote' : Student.objects.filter(form=1, stream='A',\
            total_pass_percent__gt=0)\
            .order_by('-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index', 'gender'),
    '1b_wote' : Student.objects.filter(form=1, stream='B',\
            total_pass_percent__gt=0)\
            .order_by('-total_first_solves_in_stream',\
            '-total_pass_percent', 'motivation_index', 'gender'),
  }
  return render(request, 'main/index.html', context)

# The original version of nyokatofali was present
# at /nyokatofali on Nginx on a different server.
# I am adding this redirect b/c I am too lazy to
# change the shortcut on all the computers.
def ntredirect(request):
    return redirect('index')

def login(request):
  if request.method == 'POST':
    student_id = request.POST.get('student_id', '')
    try:
        student = Student.objects.get(id=student_id)
        try:
            AccessWhitelist.objects.get(form=student.form, stream=student.stream)
        except ObjectDoesNotExist:
            messages.error(request, "You are not permitted to play at this time.")
            return redirect('index')
    except ObjectDoesNotExist:
        messages.error(request, 'Tafutia jina lako kwanza.')
        return redirect('index')
    return redirect('/mwanafunzi/' + student_id)

def mwanafunzi(request, student_id):
  student = Student.objects.get(id=student_id)
  try:
      AccessWhitelist.objects.get(form=student.form, stream=student.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('index')
  if Progress.objects.filter(student_id=student_id,
          passed_tests_percent__lt=100).count() == 0:
    # Innermost SELECT: Gets all problem IDs that the student has
    # already passed.
    # Next SELECT: Selects only those problems the student HASNT done
    # and randomly shuffles them.
    # Outer SELECT: Orders the shuffled problems by level, easiest first.
    open_problems = Problem.objects.raw(
      'SELECT * FROM (\
         SELECT * FROM main_problem \
         WHERE id NOT IN ( \
           SELECT problem_id_id FROM main_progress \
           WHERE student_id_id = %s) \
         AND enabled = True \
         ORDER BY random()) \
       AS a ORDER BY level;' % student_id)
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
  return render(request, 'main/mwanafunzi.html', context)

@never_cache
def changamoto(request, student_id, problem_id):
  student = Student.objects.get(id=student_id)
  try:
      AccessWhitelist.objects.get(form=student.form, stream=student.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('index')
  context = {
    'student' : student,
    'progress' : Progress.objects.get(
        student_id=student_id, problem_id=problem_id)
  }
  if context['progress'].passed_tests_percent == 100:
      messages.error(request, 'You have already solved this problem.')
      return redirect('mwanafunzi', student_id)
  return render(request, 'main/changamoto.html', context)

@never_cache
def hongera(request, student_id, problem_id):
    prob = Problem.objects.get(id=problem_id)
    messages.success(request, 'HONGERA. Umeshinda kutatua \
            changamoto ya %s.' % prob.name);
    return redirect('mwanafunzi', student_id)

# This view resets a student's code if it hasn't yet
# passed all tests.
def reset(request, student_id, problem_id):
  prog = Progress.objects.get(
        student_id=student_id, problem_id=problem_id)
  if prog.passed_tests_percent < 100:
      prog.latest_submission = ''
      prog.passed_tests_percent = 0
      prog.save()
  return redirect('changamoto', student_id, problem_id)

@csrf_exempt
def verifier_update(request):
  if request.method == 'POST':
    try:
      student_id = int(request.POST.get('student_id', 0))
      problem_id = int(request.POST.get('problem_id', 0))
      tests_passed = int(request.POST.get('tests_passed', 0))
      total_tests = int(request.POST.get('total_tests', 1))
      submitted_code = request.POST.get('submitted_code', '')
      progress = Progress.objects.get(student_id=student_id,
              problem_id=problem_id)
      if progress.passed_tests_percent == 100:
        return HttpResponse("SUCCESS: Ignoring verifier update "
                + "as 100% tests have already been passed.")
      progress.latest_submission = submitted_code
      progress.num_submissions += 1
      progress.passed_tests_percent = \
              (float(tests_passed) / float(total_tests)) * 100
      if progress.passed_tests_percent == 100:
          progress.passed_dtstamp = datetime.now()
      progress.save()
      Student.objects.get(id=student_id).update_rank()
      return HttpResponse("SUCCESS: Percent tests passing: " + \
              str(progress.passed_tests_percent))
    except Exception as e:
      return HttpResponse("Exception: %s" % e)
  else:
    return HttpResponse("MUST POST")
