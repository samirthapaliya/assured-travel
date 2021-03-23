from django.shortcuts import render
from django.http import HttpResponse
from .models import *


def Home(request):
    context = {
        " home ": "selected"}
    return render(request, 'links/home.html', context)


def Tours(request):
    tours = Tour.objects.all()
    context = {
        " tours ": "selected", "key":tours}
    return render(request, 'links/tours.html', context)


def About(request):
    context = {
        " about ": "selected"}
    return render(request, 'links/about.html', context)


def Contact(request):
    context = {
        " contact ": "selected"}
    return render(request, 'links/contact.html', context)


