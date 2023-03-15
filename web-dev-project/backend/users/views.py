from rest_framework_simplejwt.views import TokenObtainPairView

from rest_framework.response import Response
from rest_framework.decorators import api_view

from .models import User, Student
from .serializers import *
from rest_framework import generics



class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer

@api_view(['GET'])
def userDetail(request, enrollment_number):
    user = User.objects.filter(enrollment_number=enrollment_number).first()
    if (user.user_type == 'S'):
        student = Student.objects.get(user=user)
        serializer = StudentSerializer(student)
        return Response(serializer.data)
    else:
        Response('bye')

class UserList(generics.ListAPIView):
    serializer_class = UserSerializer

    def get_queryset(self):
        return User.objects.all()