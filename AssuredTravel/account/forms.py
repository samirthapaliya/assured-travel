from django import forms
from application.models import *
from .models import Profile
from django.forms import ModelForm


class LoginForm(forms.Form):
    username = forms.CharField()
    password = forms.CharField(widget=forms.PasswordInput)


class ProfileForm(ModelForm):
    class Meta:
        model = Profile
        fields = '__all__'
        exclude = ['user', 'username']

    def __str__(self):
        return self.username


class OrderForm(ModelForm):
    class Meta:
        model = Booking
        fields = '__all__'
        exclude = ['user']

