from django.shortcuts import render, redirect
from account.auth import admin_only
from application.models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth.decorators import login_required

from application.forms import *
from application.models import *


def admin_dashboard(request):
    return render(request, 'admins/adminDashboard.html')


def get_user(request):
    users_all = User.objects.all()
    users = users_all.filter(is_staff=0)
    context = {
        'users': users,
    }
    return render(request, 'admins/showUsers.html', context)


def update_user_to_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'User has been updated to Admin')
    return redirect('/admin-dashboard')


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