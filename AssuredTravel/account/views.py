from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect

from .auth import unauthenticated_user
from .forms import *
from .models import *


@unauthenticated_user
def register_user(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            Profile.objects.create(user=user, username=user.username)
            messages.add_message(request, messages.SUCCESS, 'User Registered Successfully')
            return redirect('/ac')
        else:
            messages.add_message(request, messages.ERROR, 'Unable to Register User')
            return render(request, 'account/Register.html', {'form': form})
    context = {'form': UserCreationForm}
    return render(request, 'account/Register.html', context)


@unauthenticated_user
def login_user(request):
    if request.user.is_authenticated:
        return redirect('homeAP')
    else:
        if request.method == "POST":
            form = LoginForm(request.POST)
            if form.is_valid():
                data = form.cleaned_data
                user = authenticate(request, username=data['username'], password=data['password'])
                if user is not None:
                    if not user.is_staff:
                        login(request, user)
                        return redirect('homeAP')
                    if user.is_staff:
                        login(request, user)
                        return redirect('/admin-dashboard')
                else:
                    messages.add_message(request, messages.ERROR, 'Username or Password Invalid')
                    return render(request, 'account/login.html', {'form': form})

    context = {
        'form': LoginForm()
    }
    return render(request, 'account/login.html', context)


def logout_user(request):
    logout(request)
    return redirect('/')


@login_required
def user_account(request):
    profile = request.user.profile

    form = ProfileForm(instance=profile)
    if request.method == 'POST':
        form = ProfileForm(request.POST, request.FILES, instance=profile)
        if form.is_valid():
            form.save()
            messages.success(request, 'Account update Successful for ' + str(request.user.profile))
            return redirect('profileAc')
    context = {
        'form': form,
        'active_profile': 'active',
    }
    return render(request, 'account/profileDetail.html', context)


def viewMyBooking(request):
    user = request.user
    bookings = Booking.objects.filter(user=user)
    print(bookings)

    context = {
        'bookings': bookings,
        'active_booking': 'active',
    }
    return render(request, 'account/orderDetail.html', context)
