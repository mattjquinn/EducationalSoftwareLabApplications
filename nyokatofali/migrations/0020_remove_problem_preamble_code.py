# Generated by Django 2.0.7 on 2018-07-19 07:03

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('nyokatofali', '0019_problem_preamble_code'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='problem',
            name='preamble_code',
        ),
    ]
