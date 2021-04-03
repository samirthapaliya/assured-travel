from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import *
from .forms import *
import os
from django.contrib import messages


def Home(request):
    tours = Tour.objects.all()
    context = {
        'tours': tours,
        'active_home': 'active',
    }
    return render(request, 'links/home.html', context)


def Tours(request):
    tours = Tour.objects.all()
    context = {
        'active_tours': 'active',
        'key': tours
    }
    return render(request, 'links/tours.html', context)


def Destination(request):
    destination = Destination.objects.all()
    context = {
        'active_destination': 'active',
        'key': destination
    }
    return render(request, 'links/destination.html', context)


def About(request):
    context = {
        'active_about': 'active',
    }
    return render(request, 'links/about.html', context)


def Contact(request):
    context = {
        'active_contact': 'active',
    }
    return render(request, 'links/contact.html', context)


def Destination(request):
    context = {
        'active_destination': 'active',
    }
    return render(request, 'links/destination.html', context)


def post_tour_detail(request):
    if request.method == 'POST':
        tourForm = TourForm(request.POST)
        if tourForm.is_valid():
            tourForm.save()
            messages.add_message(request, messages.SUCCESS, 'Person Added Successfully')
            return redirect('/products/getPersonMF')
        else:
            messages.add_message(request, messages.ERROR, 'Error in adding Person')
            return render(request, 'hidden/postTourDetail.html', {'form': tourForm})
    context = {
        'form': TourForm
    }
    return render(request, 'hidden/postTourDetail.html', context)


def view_detail(request, id):
    tour = Tour.objects.get(pk=id)
    itinerary = Itenerary.objects.filter(tour=tour)
    context = {
        'tour': tour,
        'itinerary': itinerary
    }
    return render(request, 'links/destination.html', context)
