# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-26 17:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('nyokatofali', '0008_auto_20170926_1722'),
    ]

    operations = [
        migrations.AlterField(
            model_name='progress',
            name='passed_dtstamp',
            field=models.DateTimeField(blank=True, null=True),
        ),
    ]
