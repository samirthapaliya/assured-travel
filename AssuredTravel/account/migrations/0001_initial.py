# Generated by Django 3.0.5 on 2021-04-06 12:03

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstname', models.CharField(max_length=100, null=True)),
                ('lastname', models.CharField(max_length=100, null=True)),
                ('username', models.CharField(max_length=200, null=True)),
                ('email', models.EmailField(max_length=254, null=True, unique=True)),
                ('phone', models.CharField(max_length=10, null=True)),
                ('profile_pic', models.FileField(default='static/images/profile/default.png', upload_to='static/images/uploads/profile')),
                ('created_date', models.DateTimeField(auto_now_add=True, null=True)),
                ('user', models.OneToOneField(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]