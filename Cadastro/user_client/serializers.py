from rest_framework import serializers
from . import models
from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password

from rest_framework.authtoken.models import Token


class cliente_Serializer(serializers.ModelSerializer):
    class Meta(object):
        fields=(
            "id",
            "telefone",
            "nomeResponsavel",
            "nomePaciente",
            "email",
            "dataNascimento",
            "password"
        )
        model=models.Cliente
    password = serializers.CharField(
        style={'input_type': 'password'}
    )
    

    def create(self, validated_data):
        validated_data["password"] = make_password(validated_data.get("password"))
        # token = Token.objects.create(user=cliente_Serializer)
        return super(cliente_Serializer, self).create(validated_data)