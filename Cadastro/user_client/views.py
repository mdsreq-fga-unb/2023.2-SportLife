from django.shortcuts import render
from . import models
from .serializers import cliente_Serializer
from rest_framework import generics
from django.contrib.auth import authenticate

from rest_framework.decorators import api_view, authentication_classes, permission_classes
from rest_framework.authentication import SessionAuthentication, TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import status

from django.shortcuts import get_object_or_404
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token
from rest_framework.authtoken.views import ObtainAuthToken


# class cadastro_detail (generics.RetrieveUpdateDestroyAPIView):
#     # queryset= models.Cliente.objects.all()
    
#     serializer_class = cliente_Serializer

# class cadastro (generics.ListCreateAPIView):
#     queryset= models.Cliente.objects.all()
#     # authenticate(request, email=email, password=request.data["password"])
#     serializer_class = cliente_Serializer

@api_view(['POST'])
def cadastro(request):
    serializer = cliente_Serializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        user = models.Cliente.objects.get(email=request.data['email'])
        print(user)
        user.set_password(request.data['password'])
        user.save()
        user = authenticate(request, email=request.data['email'], password=request.data['password'])
        # print(models.Cliente.is_authenticated)
        
        # token = Token.objects.create(user=user)
        # return Response({'token': token.key, 'user': serializer.data})
        return Response({ 'user': serializer.data})
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)



# class CustomAuthToken(ObtainAuthToken):

#     def post(self, request, *args, **kwargs):
#         serializer = self.serializer_class(data=request.data,
#                                            context={'request': request})
#         serializer.is_valid(raise_exception=True)
#         user = serializer.validated_data['user']
#         token, created = Token.objects.get_or_create(user=user)
#         return Response({
#             'token': token.key,
#             'user_id': user.pk,
#             'email': user.email
#         })