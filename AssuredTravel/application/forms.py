from django.forms import ModelForm
from .models import *


class TourForm(ModelForm):
    class Meta:
        model = Tour
        fields = '__all__'


class ItineraryForm(ModelForm):
    class Meta:
        model = Itinerary
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


class BookForm(ModelForm):
    class Meta:
        model = Booking
        fields = '__all__'
        exclude = ['user', 'tour', 'status']


class BookFormUpdate(ModelForm):
    class Meta:
        model = Booking
        fields = ['user', 'fullname', 'status']


class SubscribeForm(ModelForm):
    class Meta:
        model = Subscribe
        fields = '__all__'
