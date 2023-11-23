from user_client.models import Cliente

from django.contrib.auth import authenticate

from rest_framework import serializers










    


# class LoginSerializer(serializers.Serializer):

#     email = serializers.EmailField(
#         label="Email",
#         write_only=True
#     )
#     senha = serializers.CharField(
#         label="senha",
#         style={'input_type': 'password'},
#         trim_whitespace=False,
#         write_only=True
#     )
    
#     def validate(self, attrs):
#         email = attrs.get('email')
#         senha = attrs.get('senha')
        
#         if email and senha:
#             user = authenticate(request=self.context.get('request'),
#                                 email=email, senha=senha)
#             if not user:
                
#                 msg = 'Access denied: wrong username or password. '
#                 raise serializers.ValidationError(msg, code='authorization')
#         else:
#             msg = 'Both "enail" and "senha" are required.'
#             raise serializers.ValidationError(msg, code='authorization')
        
#         attrs['user'] = user
#         return attrs







