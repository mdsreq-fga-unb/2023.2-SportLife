from django.db import models
from django.core.exceptions import ValidationError
from django.contrib.auth.models import AbstractBaseUser
from django.conf import settings


class Cliente(AbstractBaseUser):
    telefone = models.CharField(max_length= 13)
    nomeResponsavel = models.CharField(max_length=40,name = 'nomeResponsavel')
    nomePaciente = models.CharField(max_length=40)
    email = models.EmailField(max_length=40, blank=False, unique=True)
    dependente = models.CharField(max_length=40)
    dataNascimento = models.DateField(blank=False)
    password = models.CharField( max_length=15)

    
    USERNAME_FIELD = 'email'
   
    # def __str__(self):
    #     return self
