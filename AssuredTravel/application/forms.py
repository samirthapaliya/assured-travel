from django import forms
from django.forms import ModelForm
from .models import *


class TourForm(ModelForm):
    class Meta:
        model: Tour
        fields = '__all__'