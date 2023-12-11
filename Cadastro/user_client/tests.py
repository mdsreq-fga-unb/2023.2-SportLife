
from django.test import TestCase
from django.contrib.auth import get_user_model


class ClienteLoginTestCase(TestCase):

    def setUp(self):
        # Create a test user for login testing
        self.user = get_user_model().objects.create_user(
            email='test@example.com',
            telefone='12345678901',
            nome='Test User',
            dependente='Dependent',
            data_nascimento='2000-01-01',
            senha='testpassword'
        )

    def test_login(self):
        # Attempt to log in with correct credentials
        login_successful = self.client.login(email='test@example.com', password='testpassword')
        self.assertTrue(login_successful)

        # Check if the user is authenticated
        user = get_user_model().objects.get(email='test@example.com')
        self.assertTrue(user.is_authenticated)

    def test_login_incorrect_password(self):
        # Attempt to log in with incorrect password
        login_successful = self.client.login(email='test@example.com', password='wrongpassword')
        self.assertFalse(login_successful)

    def test_login_invalid_user(self):
        # Attempt to log in with an invalid user
        login_successful = self.client.login(email='nonexistent@example.com', password='password')
        self.assertFalse(login_successful)
