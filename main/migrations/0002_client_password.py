# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-23 14:11
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='client',
            name='password',
            field=models.CharField(default='', max_length=40),
            preserve_default=False,
        ),
    ]
