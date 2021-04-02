from django.urls import path
from . import views


urlpatterns = [
    path('', views.admin_dashboard),
    path('ad_tour', views.tour),
    path('show-user', views.get_user, name="showUser"),
    path('registerAdmin', views.register_user_admin, name="registerAdmin"),
    path('update-user-to-admin/<int:user_id>', views.update_user_to_admin),
]