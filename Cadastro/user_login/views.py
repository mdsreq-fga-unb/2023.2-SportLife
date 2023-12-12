from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import SessionAuthentication, TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import status

from django.shortcuts import get_object_or_404
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from user_client.models import Cliente
from django.contrib.auth import authenticate, login

from user_client.serializers import cliente_Serializer



@api_view(['POST'])
def login_user(request):

    user = get_object_or_404(Cliente, email=request.data["email"])
    if not user.check_password(request.data["password"]):
        return Response("usuário não encontrado", status=status.HTTP_404_NOT_FOUND)
    # token, created = Token.objects.get_or_create(user=user)
    serializer = cliente_Serializer(instance =user)
    login(request, user)
    return Response({"user": serializer.data})

