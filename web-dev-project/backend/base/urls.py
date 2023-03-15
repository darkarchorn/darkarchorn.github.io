from django.urls import path

from . import views

urlpatterns = [
    path('time-table/<batch>', views.timeTableList),
    path('announcements/', views.announcementsList.as_view()),
    path('notifications/', views.notificationsList.as_view()),
]