from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Student, Problem, Progress
from datetime import datetime
from django.views.decorators.csrf import csrf_exempt

def index(request):
  context = {
    'all' : Student.objects.order_by('name'),
    'top_girls' : Student.objects.filter(gender=Student.FEMALE),
    'top_boys' : Student.objects.filter(gender=Student.MALE),
  }
  return render(request, 'main/index.html', context)

def login(request):
  if request.method == 'POST':
    student_id = request.POST.get('student_id', '')
    return redirect('/mwanafunzi/' + student_id)

def mwanafunzi(request, student_id):
  context = {
    'student' : Student.objects.get(id=student_id),
    'progress' : Progress.objects.filter(
        student_id=student_id).order_by('problem_seqnum')
  }
  return render(request, 'main/mwanafunzi.html', context)

def matofali(request, student_id, problem_seqnum):
  context = {
    'student' : Student.objects.get(id=student_id),
    'progress' : Progress.objects.get(
        student_id=student_id, problem_seqnum=problem_seqnum)
  }
  return render(request, 'main/matofali.html', context)

@csrf_exempt
def verifier_update(request):
  if request.method == 'POST':
    try:
      student_id = int(request.POST.get('student_id', 0))
      problem_seqnum = int(request.POST.get('problem_seqnum', 0))
      tests_passed = int(request.POST.get('tests_passed', 0))
      total_tests = int(request.POST.get('total_tests', 1))
      submitted_code = request.POST.get('submitted_code', '')
      progress = Progress.objects.get(student_id=student_id,
              problem_seqnum=problem_seqnum)
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
      return HttpResponse("SUCCESS: Percent tests passing: " + \
              str(progress.passed_tests_percent))
    except Exception as e:
      return HttpResponse("Exception: %s" % e)
  else:
    return HttpResponse("MUST POST")
