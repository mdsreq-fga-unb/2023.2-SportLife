from rest_framework import serializers
from user_client import models

class login_cliente_Serializer(serializers.ModelSerializer):
    class Meta:
        fields=(
            "id",
            "cpf",
            "email"
        )
        model=models.Cliente

