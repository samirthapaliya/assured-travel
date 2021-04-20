from django.urls import path
from . import views
from django.contrib.auth import views as auth_views


urlpatterns = [
    path('', views.login_user, name="login"),
    path('register', views.register_user, name="registerAc"),
    path('logout', views.logout_user, name="logoutAc"),
    path('profileD', views.user_account, name="profileAc"),
    path('orderD', views.viewMyBooking, name="orderD"),
    path('password_change', auth_views.PasswordChangeView.as_view(
        template_name='account/changePassword.html'), name='change_password'),
    path('password_change_done', auth_views.PasswordChangeView.as_view(
        template_name='account/changePasswordDone.html'), name='password_change_done'),
]
