from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.login_user, name="login"),
    path('register', views.register_user, name="registerAc"),
    path('logout', views.logout_user, name="logoutAc"),
    path('profile/', views.user_account, name="profileAc"),

    path('change_password', auth_views.PasswordChangeView.as_view(
        template_name='account/changePassword.html'), name='change_password'),
    path('change_password_done', auth_views.PasswordChangeView.as_view(
        template_name='account/changePasswordDone.html'), name='change_pass_done'),
]
