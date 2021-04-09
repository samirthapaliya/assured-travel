from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import *
from .forms import *
import os
from django.contrib import messages
from application.filter import TourFilter


def Home(request):
    tours = Tour.objects.all()
    filter = TourFilter(request.GET, queryset=tours)
    context = {
        'tours': tours,
        'active_home': 'active',
        'filter': filter,
    }
    return render(request, 'links/home.html', context)


def Tours(request):
    tours = Tour.objects.all()
    context = {
        'active_tours': 'active',
        'key': tours,
    }
    return render(request, 'links/tours.html', context)


def destination(request):
    destinations = Destination.objects.all()
    context = {
        'active_destination': 'active',
        'key': destinations,
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


def destinationDetail(request, id):
    tour = Tour.objects.get(pk=id)
    destination = Destination.objects.filter(tour=tour)
    print(destination)
    context = {
        'tour': tour,
        'destination': destination
    }
    return render(request, 'links/travel_destination.html', context)


def tour_search(request):
    query = Tour.objects.all()
    filter = TourFilter(request.GET, queryset=query)
    filter_qs = filter.qs
    context = {
        'filter': filter,
        'filter_qs': filter_qs
    }
    return render(request, 'links/search_view.html', context)
