from django.db import models


class Itenerary(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()


class Destination(models.Model):
    name = models.CharField(max_length=200)


class Tour(models.Model):
    picture = models.FileField(upload_to='static/images/uploads', null=True)
    name = models.CharField(max_length=100, null=True)
    price = models.IntegerField(null=True)
    location = models.CharField(max_length=100, null=True)
    main_Info = models.TextField(null=True)
    itinerary = models.ManyToManyField(Itenerary, default=None)
    country_Name = models.CharField(max_length=2000, null=True)
    description = models.TextField(blank=True)
    reviews = models.IntegerField(null=True, blank=True)
    destination = models.ManyToManyField(Destination, default=None)

    def __str__(self):
        return self.name
