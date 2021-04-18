from django import forms
from django.contrib.auth import password_validation
from django.contrib.auth.forms import PasswordResetForm, SetPasswordForm

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


class MyPasswordResetForm(PasswordResetForm):
    email = forms.EmailField(label=("Email"), max_length=254,
    widget=forms.EmailInput(attrs={'autocomplete': 'email', 'class': 'form-control'}))


class MySetPasswordForm(SetPasswordForm):
    new_password1 = forms.CharField(label=("New Password"), strip=False, widget=forms.PasswordInput(attrs=
    {'autocomplete':'new-password', 'class':'form-control'}),
    help_text=password_validation.password_validators_help_text_html())

    new_password2 = forms.CharField(label=("Confirm New Password"),
    strip=False, widget=forms.PasswordInput(attrs=
    {'autocomplete': 'new-password', 'class':'form-control'}))
