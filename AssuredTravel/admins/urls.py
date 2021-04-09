from django.urls import path
from . import views


urlpatterns = [
    path('', views.admin_dashboard,name="adminDashboardAd"),
    path('show-user', views.get_user, name="showUser"),
    path('registerAdmin', views.register_user_admin, name="registerAd"),
    path('update-user-to-admin/<int:user_id>', views.update_user_to_admin),

    path('getTour/', views.getTour, name= "getTourAd"),
    path('postTour/', views.postTour, name="postTour"),
    path('updateTour/<int:tour_id>', views.update_tour),
    path('deleteTour/<int:tour_id>', views.delete_tour),

    path('getItenerary/', views.getItenerary, name="getIteneraryAd"),
    path('postItenerary', views.postItenerary, name= "postItenerary"),
    path('updateItenerary/<int:ite_id>', views.update_tour),
    path('deleteItenerary/<int:ite_id>', views.delete_tour),

    path('getDestination/', views.getDestination, name="getDestinationAd"),
    path('postDestination', views.postDestination, name= "postDestinationAd"),
    path('updateDestination/<int:dest_id>', views.updateDestination),
    path('deleteDestination/<int:dest_id>', views.deleteDestination),

    path('getReviews/', views.getReviews, name="getReviewsAd"),
    path('postReviews', views.postReviews, name= "postReviewsAd"),
    path('updateReviews/<int:rev_id>', views.updateReviews),
    path('deleteReviews/<int:rev_id>', views.deleteReviews),
]