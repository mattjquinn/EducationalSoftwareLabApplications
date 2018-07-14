from django.contrib import admin
from .models import Student, Problem, Progress, AccessWhitelist

admin.site.register(Student)
admin.site.register(Progress)
admin.site.register(AccessWhitelist)

# Order problems in Django admin interface by ascending level.
class ProblemAdmin(admin.ModelAdmin):
    ordering = ['-level']
admin.site.register(Problem, ProblemAdmin)

