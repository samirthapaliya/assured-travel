from django.urls import path
from . import views


urlpatterns = [
    path('home/', views.Home),
    path('tours/', views.Tours),
    path('about/', views.About),
    path('contact/', views.Contact)
]