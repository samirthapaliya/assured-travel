from django.db import models
from django.contrib.auth.models import User


class Review(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    rating = models.IntegerField()


class Destination(models.Model):
    name = models.CharField(max_length=200, null=True)
    description = models.CharField(max_length=500, null=True)
    picture = models.FileField(upload_to='static/images/uploads/destination', null=True)

    def __str__(self):
        return self.name


class Tour(models.Model):
    picture = models.ImageField(upload_to='static/images/uploads', null=True)
    name = models.CharField(max_length=100, null=True)
    price = models.IntegerField(null=True)
    location = models.CharField(max_length=100, null=True)
    main_Info = models.TextField(null=True)
    country_Name = models.CharField(max_length=2000, null=True)
    description = models.TextField(blank=True)
    reviews = models.ManyToManyField(User, default=None)
    destination = models.ManyToManyField(Destination, default=None)

    def __str__(self):
        return self.name


class Itinerary(models.Model):
    name = models.CharField(max_length=200, null=True)
    description = models.TextField()
    tour = models.ForeignKey(Tour, on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return self.name + "-->" + str(self.tour)


STATUS_CHOICES = (
    ('Pending', 'Pending'),
    ('waiting for payment', 'waiting for payment'),
    ('Successful', 'Successful'),
    ('Cancel', 'Cancel')
)


class Booking(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True, blank=True)
    tour = models.ForeignKey(Tour, on_delete=models.CASCADE, null=True, blank=True)
    fullname = models.CharField(max_length=200, default=None, null=True, blank=True)
    phone = models.CharField(max_length=200, default=None, null=True, blank=True)
    persons = models.IntegerField(default=1, null=True, blank=True)
    card_number = models.CharField(default=None, max_length=200, null=True, blank=True)
    expiry_date = models.DateField(default=None, null=True, blank=True)
    cvc = models.IntegerField(default=None, null=True, blank=True)
    status = models.CharField(max_length=50, choices=STATUS_CHOICES, default='Pending')

    def __str__(self):
        return str(self.user.username + "-->" + self.tour.name)


class Subscribe(models.Model):
    fullname = models.CharField(max_length=200, default=None, null=True, blank=True)
    email = models.CharField(max_length=200, default=None, null=True, blank=True)
    subject = models.CharField(max_length=2000, default=None, null=True, blank=True)
    message = models.TextField(max_length=5000)


class Newsletter(models.Model):
    email = models.CharField(max_length=200, default=None, null=True, blank=True)
