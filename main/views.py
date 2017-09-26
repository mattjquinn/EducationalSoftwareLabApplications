from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Student, Problem, Progress

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
