from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Student

def index(request):
  context = {
    'all' : Student.objects.order_by('name'),
    'form1' : Student.objects.filter(form=1),
    'form2' : Student.objects.filter(form=2),
  }
  return render(request, 'main/index.html', context)

def login(request):
  if request.method == 'POST':
    student_id = request.POST.get('student_id', '')
    return redirect('/matofali/' + student_id)

def matofali(request, student_id):
  context = {
    'student' : Student.objects.get(id=student_id),
  }
  return render(request, 'main/matofali.html', context)
