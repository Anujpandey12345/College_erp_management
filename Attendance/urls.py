from django.urls import path
from . import views

urlpatterns = [
    path('', views.student_list, name='student_list'),
    path('take/', views.take_attendance, name='take_attendance'),
    path('report/', views.attendance_report, name='attendance_report'),
]