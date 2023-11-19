from django.shortcuts import render
from rest_framework import generics
from user_client import models
from .serializers import login_cliente_Serializer

class login_cliente (generics.ListCreateAPIView):
    queryset= models.Cliente.objects.all()
    serializer_class = login_cliente_Serializer

    