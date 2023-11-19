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
        
            "senha"
        )
    
        model=models.funcionario

    senha = serializers.CharField(
        style={'input_type': 'password'}
    )
    

    def create(self, validated_data):
        validated_data["senha"] = make_password(validated_data.get("senha"))
        return super(cadastro_funcionario_Serializer, self).create(validated_data)