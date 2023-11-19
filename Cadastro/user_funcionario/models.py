from django.db import models
from django.core.validators import MinLengthValidator


class funcionario(models.Model):
    telefone = models.CharField(max_length = 11, unique=True, validators=[MinLengthValidator(11, message='telefone deve ter 11 digitos')])
    nome = models.CharField(max_length=40)
    email = models.EmailField(max_length=40, unique=True) 
    
    senha = models.CharField(max_length=15, unique=True)

    def __str__(self):
        return self

