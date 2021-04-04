# Generated by Django 3.0.5 on 2021-04-03 16:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('application', '0012_auto_20210403_2133'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='destination',
            name='tour',
        ),
        migrations.AddField(
            model_name='tour',
            name='destination',
            field=models.ManyToManyField(default=None, to='application.Destination'),
        ),
    ]
