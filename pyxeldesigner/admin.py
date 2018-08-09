from django.contrib import admin
from .models import Group, Problem, Progress, AccessWhitelist

admin.site.register(Group)
admin.site.register(Progress)
admin.site.register(AccessWhitelist)

# Order problems in Django admin interface by ascending level.
class ProblemAdmin(admin.ModelAdmin):
    ordering = ['-level']
admin.site.register(Problem, ProblemAdmin)
