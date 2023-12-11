from rest_framework import serializers
from . import models
from django.contrib.auth.hashers import make_password


class cadastro_funcionario_Serializer(serializers.ModelSerializer):
    class Meta:
        fields=(
            "id",
            "telefone",
            "nome",
            "email",
        
            "password"
        )
    
        model=models.funcionario

    password = serializers.CharField(
        style={'input_type': 'password'}
    )
    

    def create(self, validated_data):
        validated_data["password"] = make_password(validated_data.get("password"))
        return super(cadastro_funcionario_Serializer, self).create(validated_data)