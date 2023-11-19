from django.shortcuts import render
from . import models
from .serializers import cadastro_funcionario_Serializer
from rest_framework import generics


# class cadastro_detail (generics.RetrieveUpdateDestroyAPIView):
#     queryset= models.Cliente.objects.all()
#     serializer_class = cadastro_cliente_Serializer

class cadastro_funcionario (generics.ListCreateAPIView):
    queryset= models.funcionario.objects.all()
    serializer_class = cadastro_funcionario_Serializer
