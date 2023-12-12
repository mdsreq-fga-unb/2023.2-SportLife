from django.test import TestCase
from django.contrib.auth import get_user_model


class FuncionarioTestCase(TestCase):
    def setUp(self):
        self.user_data = {
            'telefone': '123456789012',
            'cpf': '12345678901',
            'nome': 'John Doe',
            'email': 'john.doe@example.com',
            'senha': 'securepassword',
        }
        self.user = get_user_model().objects.create_user(**self.user_data)

    def test_login(self):
        # Attempt to authenticate with valid credentials
        user = get_user_model().objects.authenticate(
            telefone=self.user.telefone,  # Assuming telefone is used as the username
            password=self.user_data['senha'],
        )

        # Check if authentication was successful
        self.assertIsNotNone(user)
        self.assertEqual(user, self.user)

    def test_login_with_invalid_credentials(self):
        # Attempt to authenticate with invalid credentials
        user = get_user_model().objects.authenticate(
            telefone=self.user.telefone,  # Assuming telefone is used as the username
            password='wrongpassword',
        )

        # Check if authentication failed
        self.assertIsNone(user)
