from django.urls import path
from . import views
from .views import cadastro, cadastro_detail
from django.contrib.auth import views as auth_views
urlpatterns = [
    path('<int:pk>/', cadastro_detail.as_view()),
    path('', cadastro.as_view()),
    path('reset_password_cliente', auth_views.PasswordResetView.as_view(), name="reset_password"),
    path('reset_password_sent_cliente', auth_views.PasswordResetDoneView.as_view(), name="password_reset_done"),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(), name="password_reset_confirm"),
    path('reset_password_complete_cliente', auth_views.PasswordResetCompleteView.as_view(), name= "password_reset_complete")
]