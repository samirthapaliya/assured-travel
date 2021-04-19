from django.urls import path
from . import views


urlpatterns = [
    path('', views.admin_dashboard,name="adminDashboardAd"),
    path('show-user', views.get_user, name="showUser"),
    path('show-admin', views.get_admin, name="showAdmin"),
    path('registerAdmin', views.register_user_admin, name="registerAd"),
    path('update-user-to-admin/<int:user_id>', views.update_user_to_admin),

    path('getTour/', views.getTour, name= "getTourAd"),
    path('postTour/', views.postTour, name="postTour"),
    path('updateTour/<int:tour_id>', views.update_tour),
    path('deleteTour/<int:tour_id>', views.delete_tour),

    path('getItenerary/', views.getItenerary, name="getIteneraryAd"),
    path('postItenerary', views.postItenerary, name= "postItenerary"),
    path('updateItenerary/<int:ite_id>', views.update_itinerary),
    path('deleteItenerary/<int:ite_id>', views.delete_itinerary),

    path('getDestination/', views.getDestination, name="getDestinationAd"),
    path('postDestination', views.postDestination, name= "postDestinationAd"),
    path('updateDestination/<int:dest_id>', views.updateDestination),
    path('deleteDestination/<int:dest_id>', views.deleteDestination),

    path('getReviews/', views.getReviews, name="getReviewsAd"),
    path('postReviews', views.postReviews, name= "postReviewsAd"),
    path('updateReviews/<int:rev_id>', views.updateReviews),
    path('deleteReviews/<int:rev_id>', views.deleteReviews),

    path('getBooking/', views.getBooking, name="getBookingAd"),
    path('postBooking', views.postBooking, name= "postBookingAd"),
    path('updateBooking/<int:bk_id>', views.updateBooking),
    path('deleteBooking/<int:bk_id>', views.deleteBooking),

    path('getSubscription/', views.getSubscribe, name="getSubscription"),
    path('deleteSubscription/<int:sub_id>', views.deleteSubscription),

    path('getNewsletter/', views.getNewsletter, name="getNewsletter"),
    path('deleteNewsletter/<int:news_id>', views.deleteNewsletter),
]