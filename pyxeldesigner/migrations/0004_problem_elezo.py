# Generated by Django 2.0.7 on 2018-08-09 05:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pyxeldesigner', '0003_group_checkpointed_code'),
    ]

    operations = [
        migrations.AddField(
            model_name='problem',
            name='elezo',
            field=models.TextField(default=''),
            preserve_default=False,
        ),
    ]
