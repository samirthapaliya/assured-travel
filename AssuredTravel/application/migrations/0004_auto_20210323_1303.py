# Generated by Django 3.0.5 on 2021-03-23 07:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('application', '0003_auto_20210323_1301'),
    ]

    operations = [
        migrations.RenameField(
            model_name='tour',
            old_name='Country_Name',
            new_name='country_Name',
        ),
        migrations.RenameField(
            model_name='tour',
            old_name='Itinerary',
            new_name='itinerary',
        ),
        migrations.RenameField(
            model_name='tour',
            old_name='Location',
            new_name='location',
        ),
        migrations.RenameField(
            model_name='tour',
            old_name='Main_Info',
            new_name='main_Info',
        ),
        migrations.RenameField(
            model_name='tour',
            old_name='Name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='tour',
            old_name='Price',
            new_name='price',
        ),
    ]
