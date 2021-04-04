# Generated by Django 3.0.5 on 2021-04-03 03:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('application', '0008_auto_20210402_2232'),
    ]

    operations = [
        migrations.CreateModel(
            name='slider',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('slideImage', models.FileField(upload_to='static/images/uploads/slider')),
                ('slideName', models.CharField(max_length=100, null=True)),
                ('slideDescription', models.CharField(max_length=300, null=True)),
                ('slideLink', models.URLField(null=True)),
            ],
        ),
        migrations.AlterField(
            model_name='tour',
            name='itinerary',
            field=models.ManyToManyField(default=None, to='application.Itenerary'),
        ),
    ]
