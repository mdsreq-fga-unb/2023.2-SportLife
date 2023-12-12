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


# class cadastro_detail (generics.RetrieveUpdateDestroyAPIView):
#     queryset= models.Cliente.objects.all()
#     serializer_class = cadastro_cliente_Serializer



class cadastro_funcionario (generics.ListCreateAPIView):
    queryset= models.funcionario.objects.all()
    serializer_class = cadastro_funcionario_Serializer



@api_view(['POST'])
def login_funcionario(request):

    user = get_object_or_404(models.funcionario, email=request.data["email"])
    
    if not user.check_password(request.data["password"]):
        return Response("usuário não encontrado", status=status.HTTP_404_NOT_FOUND)
    # token, created = Token.objects.get_or_create(user=user)
    serializer = cadastro_funcionario_Serializer(instance =user)
    return Response({"user": serializer.data})
