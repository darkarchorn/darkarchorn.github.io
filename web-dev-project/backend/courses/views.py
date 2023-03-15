from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import generics
from rest_framework.parsers import MultiPartParser, FormParser


from .serializers import *
from .models import *


class courseList(generics.ListAPIView):
    serializer_class = CourseSerializer

    def get_queryset(self):
        student_id  = self.kwargs['id']
        return Course.objects.filter(student__in=[student_id])


class CoursePostsListView(generics.ListAPIView):
    serializer_class = CoursePostsSerializer
    parser_classes = (MultiPartParser, FormParser)

    def get_queryset(self):
        courses = self.kwargs['course_code']
        queryset = CoursePost.objects.filter(courses=courses)
        return queryset

    def perform_create(self, serializer):
        serializer.save(creator=self.request.user)
