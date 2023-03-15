from django.urls import path
from . import views

urlpatterns = [
    path('<slug:id>', views.courseList.as_view()),
    path('coursepost/<slug:course_code>', views.CoursePostsListView.as_view())
]
