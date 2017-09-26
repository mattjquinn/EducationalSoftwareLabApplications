from django.db import models

class Student(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20, blank=False, null=False)
    form = models.IntegerField(blank=False, null=False)

