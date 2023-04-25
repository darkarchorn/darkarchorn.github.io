from rest_framework.exceptions import AuthenticationFailed
from users import User

def login(request):
    # code to authenticate user
    
    if not User:
        raise AuthenticationFailed('wrong password')

    # code to create user session and return response
