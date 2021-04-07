from django.urls import path
from . import views


urlpatterns = [
    path('', views.admin_dashboard,name="adminDashboardAd"),
    path('postTour/', views.postTour, name="postTour"),
    path('show-user', views.get_user, name="showUser"),
    path('registerAdmin', views.register_user_admin, name="registerAd"),
    path('update-user-to-admin/<int:user_id>', views.update_user_to_admin),
    path('getTour/', views.getTour, name= "getTourAd"),
    path('getItenerary/', views.getItenerary, name="getIteneraryAd")
]