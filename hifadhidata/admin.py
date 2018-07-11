from django.contrib import admin
from .models import Student, Problem, Progress, AccessWhitelist

admin.site.register(Student)
admin.site.register(Problem)
admin.site.register(Progress)
admin.site.register(AccessWhitelist)
