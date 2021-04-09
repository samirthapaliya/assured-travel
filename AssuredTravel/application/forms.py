from django import forms
from django.forms import ModelForm
from .models import *


class TourForm(ModelForm):
    class Meta:
        model = Tour
        fields = '__all__'


class ItineraryForm(ModelForm):
    class Meta:
        model = Itenerary
        fields = '__all__'


class DestinationForm(ModelForm):
    class Meta:
        model = Destination
        fields = '__all__'

class ReviewsForm(ModelForm):
    class Meta:
        model = Review
        fields = '__all__'


class TourSearchForm(ModelForm):
    class Meta:
        model = Tour
        fields = ['location']
