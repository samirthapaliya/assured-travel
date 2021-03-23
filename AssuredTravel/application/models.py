from django.db import models


class Tour(models.Model):
    picture = models.FileField(upload_to='static/images/uploads', null=True)
    name = models.CharField(max_length=100, null=True)
    price = models.IntegerField(null=True)
    location = models.CharField(max_length=100, null=True)
    main_Info = models.TextField(null=True)
    itinerary = models.TextField(null=True)
    country_Name = models.CharField(max_length=2000, null=True)
    






