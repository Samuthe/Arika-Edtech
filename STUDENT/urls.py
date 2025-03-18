from django.urls import path
from . import views
from django.contrib import admin



urlpatterns = [
    path('', views.landing, name="landing"),
    path('home/', views.home, name="home"),
    path('login/', views.loginpage, name="login"),
    path('register/', views.registerpage, name="register"),
    path('logout/', views.logoutpage, name="logout"),
    path('dashboard/', views.dashboard, name="dashboard"),
]