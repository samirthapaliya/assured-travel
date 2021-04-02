from django.db import models


class Tour(models.Model):
    picture = models.FileField(upload_to='static/images/uploads', null=True)
    name = models.CharField(max_length=100, null=True)
    price = models.IntegerField(null=True)
    location = models.CharField(max_length=100, null=True)
    main_Info = models.TextField(null=True)
    itinerary = models.TextField(null=True)
    country_Name = models.CharField(max_length=2000, null=True)


class TourDetail(models.Model):
    bradcam = models.FileField(upload_to='static/uploads', null=True)
    tourname = models.CharField(max_length=100, null=True)
    description = models.TextField(null=True)
    Itenary = models.TextField(null=True)
    location = models.CharField(max_length=100, null=True)
    days = models.IntegerField(null=True)
    reviews = models.IntegerField(null=True, max_length=5)
