import random
from django.shortcuts import render, redirect, reverse
from django.http import HttpResponse, HttpResponseServerError
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Group, Problem, Progress, AccessWhitelist
from datetime import datetime
from django.views.decorators.csrf import csrf_exempt
from django.db.models import Max, Sum
from django.views.decorators.cache import never_cache

def index(request):
  context = {
    'all' : Group.objects.order_by('name'),
    '3a' : Group.objects.filter(form=3, stream='A')\
            .order_by('-total_pass_percent', 'motivation_index'),
    '3b' : Group.objects.filter(form=3, stream='B')\
            .order_by('-total_pass_percent', 'motivation_index'),
  }
  return render(request, 'pyxeldesigner/index.html', context)

def login(request):
  if request.method == 'POST':
    group_id = request.POST.get('group_id', '')
    try:
        group = Group.objects.get(id=group_id)
        try:
            AccessWhitelist.objects.get(form=group.form, stream=group.stream)
        except ObjectDoesNotExist:
            messages.error(request, "You are not permitted to play at this time.")
            return redirect('pd.index')
    except ObjectDoesNotExist:
        messages.error(request, 'Tafutia jina la kipindi chako kwanza.')
        return redirect('pd.index')
    return redirect(reverse('pd.kipindi', args=[group_id]))

def kipindi(request, group_id):
  group = Group.objects.get(id=group_id)
  try:
      AccessWhitelist.objects.get(form=group.form, stream=group.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('pd.index')
  if Progress.objects.filter(group_id=group_id,
          passed=False).count() == 0:
    # Innermost SELECT: Gets all problem IDs that the student has
    # already passed.
    # Next SELECT: Selects only those problems the student HASNT done
    # and randomly shuffles them.
    # Outer SELECT: Orders the shuffled problems by level, easiest first.
    open_problems = Problem.objects.raw('SELECT * FROM (\
            SELECT * FROM pyxeldesigner_problem WHERE \
            id NOT IN (SELECT problem_id_id FROM pyxeldesigner_progress WHERE \
            group_id_id = %s AND passed = True) \
            ORDER BY random()) AS a ORDER BY level;' % group_id)
    if len(list(open_problems)) > 0:
      new_problem = Progress.objects.create(
              group_id=group,
              problem_id=open_problems[0])
      new_problem.save()
    else:
      messages.error(request, 'Hakuna changamoto nyingine.')
  context = {
    'group' : group,
    'progress' : Progress.objects.filter(
        group_id=group_id).order_by('started_dtstamp')
  }
  return render(request, 'pyxeldesigner/kipindi.html', context)

@never_cache
def changamoto(request, group_id, problem_id):
  group = Group.objects.get(id=group_id)
  try:
      AccessWhitelist.objects.get(form=group.form, stream=group.stream)
  except ObjectDoesNotExist:
      messages.error(request, "You are not permitted to play at this time.")
      return redirect('pd.index')
  context = {
    'group' : group,
    'progress' : Progress.objects.get(
        group_id=group_id, problem_id=problem_id),
    'navcolor' : '%06x' % random.randint(0, 0xFFFFFF),
  }
  if context['progress'].passed == True:
      messages.error(request, 'You have already solved this problem.')
      return redirect(reverse('pd.kipindi', args=[group_id]))
  return render(request, 'pyxeldesigner/changamoto.html', context)

#@never_cache
#def hongera(request, student_id, problem_id):
#    prob = Problem.objects.get(id=problem_id)
#    messages.success(request, 'HONGERA. Umeshinda kutatua \
#            changamoto ya %s.' % prob.name);
#    return redirect(reverse('pd.mwanafunzi', args=[student_id]))

# This view resets a group's code if not already passed.
def reset(request, group_id, problem_id):
  group = Group.objects.get(id=group_id)
  prog = Progress.objects.get(
        group_id=group_id, problem_id=problem_id)
  if not prog.passed:
      group.current_code = group.checkpointed_code
      group.save()
  return redirect(reverse('pd.changamoto', args=[group_id, problem_id]))

@csrf_exempt
def save_code(request):
  if request.method == 'POST':
    try:
      group_id = int(request.POST.get('group_id', 0))
      problem_id = int(request.POST.get('problem_id', 0))
      latest_code = request.POST.get('latest_code', '')
      group = Group.objects.get(id=group_id)
      group.current_code = latest_code
      group.save()
      return HttpResponse("SUCCESS")
    except Exception as e:
      return HttpResponseServerError("EXCEPTION: %s" % e)
  else:
      return HttpResponseServerError("ERROR: MUST POST")

#@csrf_exempt
#def submit_code(request):
#  if request.method == 'POST':
#    try:
#      instructor_pwd_hash = request.POST.get('instructor_pwd_hash', '')
#      if instructor_pwd_hash != '6ae51c9997858052f953b634d0636679661d52140a6ece5cbe6321f8efcf48b6':
#          return HttpResponseServerError('Incorrect password.');
#      student_id = int(request.POST.get('student_id', 0))
#      problem_id = int(request.POST.get('problem_id', 0))
#      progress = Progress.objects.get(student_id=student_id,
#              problem_id=problem_id)
#      if progress.passed == True:
#        return HttpResponse("SUCCESS: Ignoring submission, already passed.")
#      submitted_code = request.POST.get('submitted_code', '')
#      progress.latest_submission = submitted_code
#      progress.passed = True
#      progress.passed_dtstamp = datetime.now()
#      progress.save()
#      Student.objects.get(id=student_id).update_rank()
#      return HttpResponse("SUCCESS: Submission marked as passing.")
#    except Exception as e:
#      return HttpResponseServerError("EXCEPTION: %s" % e)
#  else:
#      return HttpResponseServerError("ERROR: MUST POST")
