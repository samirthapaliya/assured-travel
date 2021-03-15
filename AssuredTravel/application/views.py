from django.shortcuts import render
from django.http import HttpResponse


def Home(request):
    return render(request, 'links/home.html')


def Tours(request):
    return render(request, 'links/tours.html')


def About(request):
    return render(request, 'links/about.html')


def Contact(request):
    return render(request, 'links/contact.html')
