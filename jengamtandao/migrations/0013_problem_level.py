# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-27 15:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('jengamtandao', '0012_auto_20170927_1312'),
    ]

    operations = [
        migrations.AddField(
            model_name='problem',
            name='level',
            field=models.IntegerField(default=1),
            preserve_default=False,
        ),
    ]