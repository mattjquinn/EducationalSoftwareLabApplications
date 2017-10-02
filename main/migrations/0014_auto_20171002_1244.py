# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-10-02 12:44
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0013_problem_level'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='stream',
            field=models.CharField(choices=[('A', 'A Stream'), ('B', 'B Stream')], default='A', max_length=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='student',
            name='total_first_solves_in_stream',
            field=models.IntegerField(default=0),
        ),
    ]
