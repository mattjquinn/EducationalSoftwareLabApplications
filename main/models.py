from django.db import models
from django.db.models import Sum

class Student(models.Model):
    MALE = 'M'
    FEMALE = 'F'
    GENDER_CHOICES = (
            (MALE, 'Male'),
            (FEMALE, 'Female'),
    )
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50, blank=False, null=False)
    form = models.IntegerField(blank=False, null=False)
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES)
    total_pass_percent = models.IntegerField(default=0)
    total_submissions = models.IntegerField(default=0)
    def __str__(self):
        return "%s (Form %d, %s)" % (self.name, self.form, self.gender)

class Problem(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, blank=False, null=False)
    level = models.IntegerField(blank=False, null=False)
    html_desc = models.TextField(blank=False, null=False)
    initial_code = models.TextField(blank=False, null=False)
    verify_code = models.TextField(blank=False, null=False)
    def __str__(self):
        return self.name

class Progress(models.Model):
    student_id = models.ForeignKey('Student')
    problem_id = models.ForeignKey('Problem')
    latest_submission = models.TextField(blank=True)
    num_submissions = models.IntegerField(default=0)
    passed_tests_percent = models.IntegerField(default=0)
    started_dtstamp = models.DateTimeField(auto_now_add=True)
    passed_dtstamp = models.DateTimeField(blank=True, null=True)
    def __str__(self):
        return "P%d for %s" % (self.problem_id, self.student_id)

