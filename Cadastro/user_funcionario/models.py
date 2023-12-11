from django.db import models
from django.core.validators import MinLengthValidator
from django.contrib.auth.models import AbstractBaseUser


class funcionario(AbstractBaseUser):
    telefone = models.CharField(max_length = 13, unique=True)
    cpf = models.CharField(max_length=11)
    nome = models.CharField(max_length=40)
    email = models.EmailField(max_length=40, unique=True) 

    password = models.CharField(max_length=15, unique=True, name = "senha")

    def __str__(self):
        return self

