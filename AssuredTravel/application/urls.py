from django.urls import path
from . import views


urlpatterns = [
    path('', views.Home, name="homeAP"),
    path('tours', views.Tours, name="tourAP"),
    path('about', views.About, name="aboutAP"),
    path('contact', views.Contact, name="contactAP"),
    path('destination', views.Destination, name="destinationAP"),
    path('tour-detail/<int:id>', views.view_detail, name="tour-detail"),
    path('postTourDetail', views.post_tour_detail),

]