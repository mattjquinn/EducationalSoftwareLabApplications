import random
from django.shortcuts import render, redirect, reverse
from django.http import HttpResponse, HttpResponseServerError
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Student, Problem, Progress, AccessWhitelist
from datetime import datetime
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Max, Sum
from django.views.decorators.cache import never_cache

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
  return render(request, 'jengamtandao/index.html', context)

def login(request):
  if request.method == 'POST':
    student_id = request.POST.get('student_id', '')
    try:
        student = Student.objects.get(id=student_id)
        try:
            AccessWhitelist.objects.get(form=student.form, stream=student.stream)
        except ObjectDoesNotExist:
            messages.error(request, "You are not permitted to play at this time.")
            return redirect('jm.index')
    except ObjectDoesNotExist:
        messages.error(request, 'Tafutia jina lako kwanza.')
        return redirect('jm.index')
    return redirect(reverse('jm.mwanafunzi', args=[student_id]))

def mwanafunzi(request, student_id):
  student = Student.objects.get(id=student_id)
  try:
      AccessWhitelist.objects.get(form=student.form, stream=student.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('jm.index')
  if Progress.objects.filter(student_id=student_id,
          passed=False).count() == 0:
    # Innermost SELECT: Gets all problem IDs that the student has
    # already passed.
    # Next SELECT: Selects only those problems the student HASNT done
    # and randomly shuffles them.
    # Outer SELECT: Orders the shuffled problems by level, easiest first.
    open_problems = Problem.objects.raw('SELECT * FROM (\
            SELECT * FROM jengamtandao_problem WHERE \
            id NOT IN (SELECT problem_id_id FROM jengamtandao_progress WHERE \
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
  return render(request, 'jengamtandao/mwanafunzi.html', context)

@never_cache
def changamoto(request, student_id, problem_id):
  student = Student.objects.get(id=student_id)
  try:
      AccessWhitelist.objects.get(form=student.form, stream=student.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('jm.index')
  context = {
    'student' : student,
    'progress' : Progress.objects.get(
        student_id=student_id, problem_id=problem_id)
  }
  if context['progress'].passed == True:
      messages.error(request, 'You have already solved this problem.')
      return redirect(reverse('jm.mwanafunzi', args=[student_id]))
  return render(request, 'jengamtandao/changamoto.html', context)

@never_cache
def hongera(request, student_id, problem_id):
    prob = Problem.objects.get(id=problem_id)
    messages.success(request, 'HONGERA. Umeshinda kutatua \
            changamoto ya %s.' % prob.name);
    return redirect(reverse('jm.mwanafunzi', args=[student_id]))

# This view resets a student's code if not already passed.
def reset(request, student_id, problem_id):
  prog = Progress.objects.get(
        student_id=student_id, problem_id=problem_id)
  if not prog.passed:
      prog.latest_submission = ''
      prog.save()
  return redirect(reverse('jm.changamoto', args=[student_id, problem_id]))

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
def submit_code(request):
  if request.method == 'POST':
    try:
      instructor_pwd_hash = request.POST.get('instructor_pwd_hash', '')
      if instructor_pwd_hash != 'f1db37815cb37bc21dba16975088c09582f9cd31190f2dc6cc21d7e1542cd069':
          return HttpResponseServerError('Incorrect password.');
      student_id = int(request.POST.get('student_id', 0))
      problem_id = int(request.POST.get('problem_id', 0))
      progress = Progress.objects.get(student_id=student_id,
              problem_id=problem_id)
      if progress.passed == True:
        return HttpResponse("SUCCESS: Ignoring submission, already passed.")
      submitted_code = request.POST.get('submitted_code', '')
      progress.latest_submission = submitted_code
      progress.passed = True
      progress.passed_dtstamp = datetime.now()
      progress.save()
      Student.objects.get(id=student_id).update_rank()
      return HttpResponse("SUCCESS: Submission marked as passing.")
    except Exception as e:
      return HttpResponseServerError("EXCEPTION: %s" % e)
  else:
      return HttpResponseServerError("ERROR: MUST POST")
