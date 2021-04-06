from django.db import models
from django.contrib.auth.models import User


class Profile(models.Model):

    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    firstname = models.CharField(max_length=100, null=True)
    lastname = models.CharField(max_length=100, null=True)
    username = models.CharField(max_length=200, null=True)
    email = models.EmailField(null=True, unique=True)
    phone = models.CharField(null=True, max_length=10)
    profile_pic = models.FileField(upload_to='static/images/uploads/profile', default='static/images/profile/default.png')
    created_date = models.DateTimeField(auto_now_add=True, null=True)



