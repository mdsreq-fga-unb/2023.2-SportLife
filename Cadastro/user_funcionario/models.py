from django.db import models
from django.core.validators import MinLengthValidator
from django.contrib.auth.models import AbstractBaseUser


class funcionario(AbstractBaseUser):
    cpf = models.CharField(max_length=11)
    nome_completo = models.CharField(max_length=40)
    telefone = models.CharField(max_length = 13, unique=True)
    email = models.EmailField(max_length=40, unique=True) 
    data_nascimento = models.DateField()
    is_active = models.BooleanField(default=True)
    

    password = models.CharField(max_length=15)
    USERNAME_FIELD = 'email'

