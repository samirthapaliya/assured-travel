from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect

from account.auth import admin_only
from application.models import *
from application.forms import *


@login_required
@admin_only
def admin_dashboard(request):
    tour = Tour.objects.all()
    tour_count = tour.count()
    itinerary = Itenerary.objects.all()
    itinerary_count = itinerary.count()
    destination = Destination.objects.all()
    destination_count = destination.count()
    reviews = Review.objects.all()
    reviews_count = reviews.count()
    users = User.objects.all()
    user_count = users.filter(is_staff=0).count()
    admin_count = users.filter(is_staff=1).count()
    context = {
        'tour': tour_count,
        'user': user_count,
        'itinerary': itinerary_count,
        'destination': destination_count,
        'reviews': reviews_count,
        'admin': admin_count,
        'active_dashboard': 'active',
    }
    return render(request, 'admins/adminDashboard.html', context)


@login_required
@admin_only
def get_user(request):
    users_all = User.objects.all()
    users = users_all.filter(is_staff=0)
    context = {
        'users': users,
    }
    return render(request, 'admins/showUsers.html', context)


@login_required
@admin_only
def register_user_admin(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'User Registration Successful')
            return redirect('/admin-dashboard')
        else:
            messages.add_message(request, messages.ERROR, "Please provide correct details")
            return render(request, "admins/register_user_admin.html", {'form': form})
    context = {
        'form': UserCreationForm
    }
    return render(request, 'admins/register_user_admin.html', context)


@login_required
@admin_only
def update_user_to_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'User has been updated to Admin')
    return redirect('/admin-dashboard')


# for tour
def getTour(request):
    tours = Tour.objects.all()

    context = {
        'tours': tours,

    }
    return render(request, 'admins/showTour.html', context)


@login_required
@admin_only
def postTour(request):
    if request.method == 'POST':
        form = TourForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'Tour Added Successfully')
            return redirect('/admin-dashboard/getTour')
        else:
            messages.add_message(request, messages.ERROR, 'Error in adding tour')
            return render(request, 'admins/postTour.html', {'form': form})
    else:
        form = TourForm()

    context = {"form": form}
    return render(request, 'admins/postTour.html', context)


def update_tour(request, tour_id):
    instance = Tour.objects.get(id=tour_id)
    if request.method == "POST":
        form = TourForm(request.POST, request.FILES, instance=instance)
        if form.is_valid():
            form.save()
            return redirect('/admin-dashboard/getTour')
    context = {
        'form': TourForm(instance=instance),
        'activate_Tour': 'active'
    }
    return render(request, 'admins/updateTour.html', context)


def delete_tour(request, tour_id):
    tour = Tour.objects.get(id=tour_id)
    tour.delete()
    return redirect('getTourAd')


# for itinerary
def getItenerary(request):
    itinerary = Itenerary.objects.all()
    context = {
        'itinerary': itinerary,
    }
    return render(request, 'admins/showItenerary.html', context)


def postItenerary(request):
    if request.method == 'POST':
        form = ItineraryForm(request.POST)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'Itinerary Added Successfully')
            return redirect('/admin-dashboard/getItenerary')
        else:
            messages.add_message(request, messages.ERROR, 'Error in adding itinerary')
            return render(request, 'admins/postItenerary.html', {'form': form})
    else:
        form = ItineraryForm()

    context = {"form": form}
    return render(request, 'admins/postItenerary.html', context)


def update_itinerary(request, ite_id):
    ins = Itenerary.objects.get(id=ite_id)
    if request.method == "POST":
        form = ItineraryForm(request.POST, request.FILES, instance=ins)
        if form.is_valid():
            form.save()
            return redirect('/admin-dashboard/getItenerary')
    context = {
        'form': TourForm(instance=ins),
        'activate_Itinerary': 'active'
    }
    return render(request, 'admins/updateItenerary.html', context)


def delete_itinerary(request, ite_id):
    itinerary = Itenerary.objects.get(id=ite_id)
    itinerary.delete()
    return redirect('getIteneraryAd')


# for Destination
def getDestination(request):
    destination = Destination.objects.all()
    context = {
        'destination': destination,
    }
    return render(request, 'admins/showDestination.html', context)


def postDestination(request):
    if request.method == 'POST':
        form = DestinationForm(request.POST, request.FILES)

        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'Destination Added Successfully')
            return redirect('/admin-dashboard/getDestination')
        else:
            messages.add_message(request, messages.ERROR, 'Error in adding itinerary')
            return render(request, 'admins/postDestination.html', {'form': form})
    else:
        form = DestinationForm()

    context = {"form": form}
    return render(request, 'admins/postDestination.html', context)


def updateDestination(request, dest_id):
    destination = Destination.objects.get(id=dest_id)
    if request.method == "POST":
        form = DestinationForm(request.POST, request.FILES, instance=destination)
        if form.is_valid():
            form.save()
            return redirect('/admin-dashboard/getDestination')
    context = {
        'form': DestinationForm(instance=destination),
        'activate_destination': 'active'
    }
    return render(request, 'admins/updateDestination.html', context)


def deleteDestination(request, dest_id):
    dest = Destination.objects.get(id=dest_id)
    dest.delete()
    return redirect('getIteneraryAd')


# for Reviews
def getReviews(request):
    reviews = Review.objects.all()
    context = {
        'reviews': reviews,
    }
    return render(request, 'admins/showReviews.html', context)


def postReviews(request):
    if request.method == 'POST':
        form = ReviewsForm(request.POST)

        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'Reviews Added Successfully')
            return redirect('/admin-dashboard/getReviews')
        else:
            messages.add_message(request, messages.ERROR, 'Error in adding Reviews')
            return render(request, 'admins/postReviews.html', {'form': form})
    else:
        form = ReviewsForm()

    context = {"form": form}
    return render(request, 'admins/postReviews.html', context)


def updateReviews(request, rev_id):
    reviews = Review.objects.get(id=rev_id)
    if request.method == "POST":
        form = ReviewsForm(request.POST, instance=reviews)
        if form.is_valid():
            form.save()
            return redirect('/admin-dashboard/getReviews')
    context = {
        'form': DestinationForm(instance=reviews),
        'activate_reviews': 'active'
    }
    return render(request, 'admins/updateReviews.html', context)


def deleteReviews(request, rev_id):
    reviews = Review.objects.get(id=rev_id)
    reviews.delete()
    return redirect('getReviewsAd')
