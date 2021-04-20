from django.contrib import messages
from django.contrib.auth.views import login_required
from django.shortcuts import render, redirect
from application.filter import TourFilter
from .forms import *


def Home(request):
    tours = Tour.objects.all()[:6]
    # filter = TourFilter(request.GET, queryset=tours)
    destinations = Destination.objects.all()[:6]
    context = {
        'tours': tours,
        'active_home': 'active',
        # 'filter': filter,
        'destinations': destinations,
    }
    return render(request, 'links/home.html', context)


def Tours(request):
    tours = Tour.objects.all()
    context = {
        'active_tours': 'active',
        'tours': tours,
    }
    return render(request, 'links/tours.html', context)


def destination(request):
    destinations = Destination.objects.all()
    context = {
        'active_destination': 'active',
        'destinations': destinations,
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
    itinerary = Itinerary.objects.filter(tour=tour)
    context = {
        'tour': tour,
        'itinerary': itinerary
    }
    return render(request, 'links/destination_detail.html', context)


def destinationDetail(request, id):
    destination = Destination.objects.get(pk=id)
    tour = Tour.objects.filter(destination=destination)
    print(tour)
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


@login_required(login_url="login")
def book_user(request, id):
    tour = Tour.objects.get(id=id)
    self_user = request.user
    if request.method == 'POST':
        form = BookForm(request.POST)
        if form.is_valid():
            instance = form.save(commit=False)
            instance.tour = tour
            instance.user = self_user
            instance.save()
            messages.add_message(request, messages.SUCCESS, "Booked Successfully")
            return redirect('bookingSuccess')
        else:
            messages.add_message(request, messages.ERROR, "Couldn't book")
            return render(request, 'links/booking_form.html', {'form': form})

    context = {
        'form': BookForm(),
        'tour': tour,
    }
    return render(request, 'links/booking_form.html', context)


def book_success(request):
    return render(request, 'links/booking_success.html')


def postSubscription(request):
    if request.method == 'POST':
        data = request.POST
        message = data['message']
        name = data['name']
        email = data['email']
        subject = data['subject']
        subscription = Subscribe.objects.create(message=message,
                                                fullname=name,
                                                email=email,
                                                subject=subject
                                                )
        if subscription:
            return redirect('homeAP')

    return render(request, 'links/contact.html')


def postNewsletter(request):
    if request.method == 'POST':
        data = request.POST
        email = data['email']
        newsletter = Newsletter.objects.create(
            email=email,
        )
        if newsletter:
            return redirect('homeAP')

    return render(request, 'links/home.html')
