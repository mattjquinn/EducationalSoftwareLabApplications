# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-23 14:09
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Client',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False)),
                ('username', models.CharField(max_length=20)),
                ('full_name', models.CharField(max_length=100)),
                ('acct_balance_tzs', models.IntegerField(default=0)),
            ],
        ),
    ]
