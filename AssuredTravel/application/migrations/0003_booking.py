# Generated by Django 3.0.5 on 2021-04-10 07:08

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('application', '0002_auto_20210409_2057'),
    ]

    operations = [
        migrations.CreateModel(
            name='Booking',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('persons', models.IntegerField(default=1)),
                ('card_number', models.IntegerField(default=None)),
                ('exipiry_date', models.DateField(default=None)),
                ('cvc', models.IntegerField(default=None, max_length=3)),
                ('tour', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='application.Tour')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
