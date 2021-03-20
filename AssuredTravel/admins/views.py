from django.shortcuts import render, redirect
from account.auth import admin_only
from application.models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.contrib import messages
from django.contrib.auth.decorators import login_required

@login_required
@admin_only
def admin_dashboard(request):
    student = Student.objects.all()
    student_count = student.count()
    files = FileUpload.objects.all()
    files_count = files.count()
    users = User.objects.all()
    user_count = users.filter(is_staff=0).count()
    admin_count = users.filter(is_staff=1).count()
    context = {
        'student': student_count,
        'file': files_count,
        'user': user_count,
        'admin': admin_count
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
def update_user_to_admin(request, user_id):
    user = User.objects.get(id=user_id)
    user.is_staff = True
    user.save()
    messages.add_message(request, messages.SUCCESS, 'User has been updated to Admin')
    return redirect('/admin-dashboard')