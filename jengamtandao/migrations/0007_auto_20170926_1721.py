# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-26 17:21
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('jengamtandao', '0006_progress'),
    ]

    operations = [
        migrations.AlterField(
            model_name='progress',
            name='latest_submission',
            field=models.TextField(blank=True),
        ),
    ]
