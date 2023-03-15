from django.contrib import admin
from .models import *

models_list = [Course, CoursePost]
admin.site.register(models_list)