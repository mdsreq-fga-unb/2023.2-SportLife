from django.urls import path
from . import views
from .views import cadastro, cadastro_detail
urlpatterns = [
    path('<int:pk>/', cadastro_detail.as_view()),
    path('', cadastro.as_view())
]