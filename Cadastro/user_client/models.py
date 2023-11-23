from django.db import models
from django.core.exceptions import ValidationError
from django.contrib.auth.models import AbstractBaseUser

class Cliente(AbstractBaseUser):
    telefone = models.CharField(max_length= 11, unique=True)
    username = models.CharField(max_length=40, name="nome")
    email = models.EmailField(max_length=40, unique=True)
    dependente = models.CharField(max_length=40)
    data_nascimento = models.DateField(blank=False)
    password = models.CharField( max_length=15, unique=True, name="senha")
    USERNAME_FIELD = 'email'
    def __str__(self):
        return self
