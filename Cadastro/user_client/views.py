from django.shortcuts import render
from . import models
from .serializers import cliente_Serializer
from rest_framework import generics


class cadastro_detail (generics.RetrieveUpdateDestroyAPIView):
    queryset= models.Cliente.objects.all()
    serializer_class = cliente_Serializer

class cadastro (generics.ListCreateAPIView):
    queryset= models.Cliente.objects.all()
    serializer_class = cliente_Serializer
