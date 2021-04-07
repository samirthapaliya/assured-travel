from django.db import models
from django.contrib.auth.models import User


class Review(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    rating = models.IntegerField()


class Itenerary(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()


class Destination(models.Model):
    name = models.CharField(max_length=200)
    picture = models.FileField(upload_to='static/images/uploads/destination', null=True)

    def __str__(self):
        return self.name


class Tour(models.Model):
    picture = models.FileField(upload_to='static/images/uploads', null=True)
    num = models.IntegerField(null=True)
    name = models.CharField(max_length=100, null=True)
    price = models.IntegerField(null=True)
    date = models.DateField(default=None)
    location = models.CharField(max_length=100, null=True)
    main_Info = models.TextField(null=True)
    itinerary = models.ManyToManyField(Itenerary, default=None)
    country_Name = models.CharField(max_length=2000, null=True)
    description = models.TextField(blank=True)
    reviews = models.ManyToManyField(User, default=None)
    destination = models.ManyToManyField(Destination, default=None)

    def __str__(self):
        return self.name
