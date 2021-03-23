from django.shortcuts import render
from django.http import HttpResponse
from .models import *


def Home(request):
    context = {
        'activate_home': 'active',
    }
    return render(request, 'links/home.html', context)


def Tours(request):
    tours = Tour.objects.all()
    context = {
         'activate_tours': 'active',
         'key': tours
    }
    return render(request, 'links/tours.html', context)


def About(request):
    context = {
        'activate_about': 'active',
    }
    return render(request, 'links/about.html', context)


def Contact(request):
    context = {
         'active_contact': 'active',
    }
    return render(request, 'links/contact.html', context)


