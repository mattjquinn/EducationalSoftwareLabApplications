# Generated by Django 2.0.7 on 2018-08-17 08:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('hifadhidata', '0007_problem_is_insert_update_delete_only'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='problem',
            name='is_insert_update_delete_only',
        ),
    ]