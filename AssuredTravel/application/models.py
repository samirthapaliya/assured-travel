from django.db import models


class Packages(models.Model):
    name = models.CharField(max_length=2000)
    price = models.IntegerField()
    location = models.CharField(max_length=2000)
    image = models.ImageField()

    def __str__(self):
        return self.name
