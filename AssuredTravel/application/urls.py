from django.urls import path
from . import views


urlpatterns = [
    path('', views.Home, name="homeAP"),
    path('tours', views.Tours, name="tourAP"),
    path('about', views.About, name="aboutAP"),
    path('contact', views.Contact, name="contactAP"),
    path('destination', views.destination, name="destinationAP"),
    path('tour-detail/<int:id>', views.view_detail, name="tour-detail"),
    path('postTourDetail', views.post_tour_detail),
    path('travelDestination/<int:id>', views.destinationDetail, name="travelDestination"),
    path('search/', views.tour_search, name="search"),
    path('booking/<int:id>', views.book_user, name='booking'),
    path('bookingSuccess', views.book_success, name='bookingSuccess'),
    path('subscription', views.postSubscription, name='subscription'),
    path('newsletter', views.postNewsletter, name='newsletter'),
]