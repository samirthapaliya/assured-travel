from django.urls import path
from . import views
from django.contrib.auth import views as auth_views

from .forms import MyPasswordResetForm, MySetPasswordForm

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
    path('password_reset', auth_views.PasswordResetView.as_view(template_name='account/resetPassword.html',
                                                                form_class=MyPasswordResetForm), name='password_reset'),

    path('password-reset/done/', auth_views.PasswordResetDoneView.as_view(
        template_name='account/password_reset_done.html'), name='password_reset_done'),

    path('password-reset-confirm/<uidb64>/<token>/',
         auth_views.PasswordResetConfirmView.as_view(template_name='account/password_reset_confirm.html',
                                                     form_class=MySetPasswordForm), name='password_reset_confirm'),

    path('password-reset-complete',
         auth_views.PasswordResetCompleteView.as_view(template_name='account/password_reset_complete.html'
                                                      ), name='password_reset_complete'),

]
