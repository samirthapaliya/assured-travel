from django.shortcuts import render, redirect
from account.auth import admin_only
from application.models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth.decorators import login_required

from application.forms import *
from application.models import *


@login_required
@admin_only
def admin_dashboard(request):
    tour =Tour.objects.all()
    tour_count = tour.count()
    user = User.objects.all()
    # user_count = User.filter(is_staff=0).count()
    # admin_count = User.filter(is_staff=1).count()

    return render(request, 'admins/adminDashboard.html')


@login_required
@admin_only
def get_user(request):
    users_all = User.objects.all()
    users = users_all.filter(is_staff=0)
    context = {
        'users': users,
    }
    return render(request, 'admins/showUsers.html', context)


def register_user_admin(request):
    if request.method == "POST":
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.success, 'User Registration Successful')
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


@login_required
@admin_only
def tour(request):
    if request.method == 'POST':
        form = TourForm(request.POST)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.SUCCESS, 'Tour Added Successfully')
            return redirect('/admin-dashboard/tour')
        else:
            messages.add_message(request, messages.ERROR, 'Error in adding tour')
            return render(request, 'admins/tour.html', {'form': form})
    context = {"form": TourForm}
    return render(request, 'admins/tour.html', context)
