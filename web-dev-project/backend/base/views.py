from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.generics import ListAPIView

from .models import Batch, Notification, TimeTable, Announcement
from .serializers import AnnouncementSerializer, NotificationSerializer
from .serializers2 import TimeTableSerializer


@api_view(['GET'])
def timeTableList(request, batch):
    batch = Batch.objects.filter(name=batch.upper()).first()
    day = request.GET.get('day')
    timeTable = TimeTable.objects.filter(batch=batch).filter(day=day)
    serializer = TimeTableSerializer(timeTable, many=True)
    return Response(serializer.data)


# @api_view(['GET'])
# def announcementsList(request):
#     announcements = Announcement.objects.all()
#     serializer = AnnouncementSerializer(announcements, many=True)
#     return Response(serializer.data)

class announcementsList(ListAPIView):
    serializer_class = AnnouncementSerializer
    def get_queryset(self):
        return Announcement.objects.all()


# @api_view(['GET'])
# def notificationsList(request):
#     notifications = Notification.objects.all()
#     serializer = NotificationSerializer(notifications, many=True)
#     return Response(serializer.data)

class notificationsList(ListAPIView):
    serializer_class = NotificationSerializer
    def get_queryset(self):
        return Notification.objects.all()
