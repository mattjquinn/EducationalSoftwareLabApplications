import random
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Student, Problem, Progress
from datetime import datetime
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Max, Sum

def index(request):
  context = {
    'all' : Student.objects.order_by('name'),
    'top_girls' : Student.objects.filter(
            gender=Student.FEMALE,total_pass_percent__gt=0) \
            .order_by('-total_pass_percent', 'total_submissions')[:10],
    'top_boys' : Student.objects.filter(
            gender=Student.MALE,total_pass_percent__gt=0) \
            .order_by('-total_pass_percent', 'total_submissions')[:10]
  }
  return render(request, 'main/index.html', context)

def login(request):
  if request.method == 'POST':
    student_id = request.POST.get('student_id', '')
    try:
        student = Student.objects.get(id=student_id)
    except ObjectDoesNotExist:
        messages.error(request, 'Tafutia jina lako kwanza.')
        return redirect('index')
    return redirect('/mwanafunzi/' + student_id)

def mwanafunzi(request, student_id):
  student = Student.objects.get(id=student_id)
  if Progress.objects.filter(student_id=student_id,
          passed_tests_percent__lt=100).count() == 0:
    # Innermost SELECT: Gets all problem IDs that the student has
    # already passed.
    # Next SELECT: Selects only those problems the student HASNT done
    # and randomly shuffles them.
    # Outer SELECT: Orders the shuffled problems by level, easiest first.
    open_problems = Problem.objects.raw('SELECT * FROM (\
            SELECT * FROM main_problem WHERE \
            id NOT IN (SELECT problem_id_id FROM main_progress WHERE \
            student_id_id = %s) ORDER BY random()) AS a ORDER BY level;' % student_id)
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

def changamoto(request, student_id, problem_id):
  context = {
    'student' : Student.objects.get(id=student_id),
    'progress' : Progress.objects.get(
        student_id=student_id, problem_id=problem_id)
  }
  if context['progress'].passed_tests_percent == 100:
      messages.error(request, 'You have already solved this problem.')
      return redirect('mwanafunzi', student_id)
  return render(request, 'main/changamoto.html', context)

# This view resets a student's code if it hasn't yet
# passed all tests.
def reset(request, student_id, problem_id):
  prog = Progress.objects.get(
        student_id=student_id, problem_id=problem_id)
  if prog.passed_tests_percent < 100:
      prog.latest_submission = ''
      prog.save()
  return redirect('changamoto', student_id, problem_id)

def update_student_rank(student_id):
    all_progress = Progress.objects.filter(student_id=student_id)
    total_pass_percent = all_progress\
            .aggregate(Sum('passed_tests_percent'))['passed_tests_percent__sum']
    total_submissions = all_progress\
                .aggregate(Sum('num_submissions'))['num_submissions__sum']
    student = Student.objects.get(id=student_id)
    student.total_pass_percent = total_pass_percent
    student.total_submissions = total_submissions
    student.save()

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
      update_student_rank(student_id)
      return HttpResponse("SUCCESS: Percent tests passing: " + \
              str(progress.passed_tests_percent))
    except Exception as e:
      return HttpResponse("Exception: %s" % e)
  else:
    return HttpResponse("MUST POST")
