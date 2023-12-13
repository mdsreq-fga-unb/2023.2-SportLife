from django.shortcuts import render
from . import models
from .serializers import cadastro_funcionario_Serializer
from rest_framework import generics
from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import SessionAuthentication, TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import status

from django.shortcuts import get_object_or_404
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from django.contrib.auth import authenticate, login


# class cadastro_detail (generics.RetrieveUpdateDestroyAPIView):
#     queryset= models.Cliente.objects.all()
#     serializer_class = cadastro_cliente_Serializer



# class cadastro_funcionario (generics.ListCreateAPIView):
#     queryset= models.funcionario.objects.all()
#     serializer_class = cadastro_funcionario_Serializer

@api_view(['POST'])
def cadastro_funcionario(request):
    serializer = cadastro_funcionario_Serializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        user = models.funcionario.objects.get(email=request.data['email'])
        user.set_password(request.data['password'])
        user.save()
        authenticate(request, email=request.data['email'], password=request.data['password'])
        
        
        # token = Token.objects.create(user=user)
        # return Response({'token': token.key, 'user': serializer.data})
        return Response({ 'user': serializer.data})
        
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@api_view(['POST'])
def login_funcionario(request):

    user = get_object_or_404(models.funcionario, email=request.data["email"])
    if not user.check_password(request.data["password"]):
        return Response("usuário não encontrado", status=status.HTTP_400_BAD_REQUEST)
    # token, created = Token.objects.get_or_create(user=user)
    serializer = cadastro_funcionario_Serializer(instance =user)
    login(request, user)
    return Response({"user": serializer.data})
