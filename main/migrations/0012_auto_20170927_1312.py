# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-27 13:12
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0011_auto_20170927_1007'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='name',
            field=models.CharField(max_length=50),
        ),
    ]
