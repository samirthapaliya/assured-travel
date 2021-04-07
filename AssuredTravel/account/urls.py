from django.urls import path
from . import views

urlpatterns = [
    path('', views.login_user, name="login"),
    path('register', views.register_user, name="registerAc"),
    path('logout', views.logout_user, name="logoutAc"),
    path('profile/', views.user_account, name="profileAc"),
]

