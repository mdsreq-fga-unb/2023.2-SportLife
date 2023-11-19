from rest_framework import serializers
from . import models
from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password



class cadastro_cliente_Serializer(serializers.ModelSerializer):
    class Meta:
        fields=(
            "id",
            "telefone",
            "nome",
            "email",
            "dependente",
            "senha", 
        )
        model=models.Cliente
    senha = serializers.CharField(
        style={'input_type': 'password'}
    )
    

    def create(self, validated_data):
        validated_data["senha"] = make_password(validated_data.get("senha"))
        return super(cadastro_cliente_Serializer, self).create(validated_data)