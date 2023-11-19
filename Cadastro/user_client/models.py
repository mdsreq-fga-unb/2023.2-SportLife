from django.db import models
from django.core.exceptions import ValidationError

class Cliente(models.Model):
    telefone = models.CharField(max_length= 11, unique=True)
    nome = models.CharField(max_length=40)
    email = models.EmailField(max_length=40, unique=True) 
    dependente = models.CharField(max_length=40)
    senha = models.CharField( max_length=15, unique=True)
    def __str__(self):
        return self
