# Generated by Django 2.0.7 on 2018-08-12 12:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pyxeldesigner', '0006_auto_20180809_1404'),
    ]

    operations = [
        migrations.AddField(
            model_name='problem',
            name='preamble',
            field=models.TextField(default=''),
            preserve_default=False,
        ),
    ]
