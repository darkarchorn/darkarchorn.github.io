from django.db import models
from users.models import Student

class Course(models.Model):
    name = models.CharField(max_length=100, blank=False)
    code = models.CharField(max_length=15, primary_key=True)

    student = models.ManyToManyField(Student)

    def __str__(self) -> str:
        return self.code
    
def upload_to(instance, filename):
    return 'media/{filename}'.format(filename=filename)
class CoursePost(models.Model):
    courses = models.ForeignKey('courses.Course', on_delete=models.CASCADE)
    post_time = models.DateTimeField()
    title = models.CharField(max_length=100)
    detail = models.TextField()
    media_url = models.FileField(upload_to=upload_to, blank=True, null=True)