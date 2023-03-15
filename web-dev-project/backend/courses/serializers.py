from rest_framework.serializers import ModelSerializer
from rest_framework import serializers
from .models import *
from rest_framework.parsers import MultiPartParser, FormParser

class CourseSerializer(ModelSerializer):
    class Meta:
        model = Course
        fields = '__all__'

class CoursePostsSerializer(ModelSerializer):
    image_url = serializers.FileField(required=False)
    class Meta:
        model = CoursePost
        fields = '__all__'
