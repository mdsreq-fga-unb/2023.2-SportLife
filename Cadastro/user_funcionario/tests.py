from django.test import TestCase
from django.contrib.auth import get_user_model
from .models import funcionario


class FuncionarioLoginTestCase(TestCase):

    def setUp(self):
        # Create a test user for login testing
        self.user = funcionario.objects.create(
            email='test@example.com',
            telefone='9999999999',
            nome='Test Func',
            cpf='12345678901',
            password='testpassword'
        )

    def test_create_user(self):
        # Create a test user
        nome = self.user.nome
        self.assertEqual(nome, 'Test Func')
        email = self.user.email
        self.assertEqual(email, 'test@example.com')
        telefone = self.user.telefone
        self.assertEqual(telefone, '9999999999')
        cpf = self.user.cpf
        self.assertEqual(cpf, '12345678901')
        password = self.user.password
        self.assertEqual(password, 'testpassword')


    def test_login(self):
        # Attempt to log in with correct credentials
        login_successful = self.client.login(email='test@example.com', password='testpassword')
        self.assertFalse(login_successful)

        # Check if the user is authenticated
        user = funcionario.objects.get(email='test@example.com')
        self.assertTrue(user.is_authenticated)

        # Attempt to log in with incorrect password
        login_successful = self.client.login(email='test@example.com', password='wrongpassword')
        self.assertFalse(login_successful)

        # Attempt to log in with an invalid user
        login_successful = self.client.login(email='nonexistent@example.com', password='password')
        self.assertFalse(login_successful)
