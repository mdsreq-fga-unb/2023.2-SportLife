import pytest
import models

@pytest.mark.django_db
def test_create_user():
    user = models.Cliente.objects.create(
        telefone="99999999999",
        username="Usuario",
        email="test@email.com",
        dependente="NomePai",
        data_nascimento="1999-01-01",
        password="123456",)
    assert user.telefone == "99999999999"
    assert user.username == "Usuario"
    assert user.email == "test@email.com"
    assert user.dependente == "NomePai"
    assert user.data_nascimento == "1999-01-01"
    assert user.password == "123456"
    #this is a comment
    #another comment