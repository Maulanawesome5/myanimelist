from django.urls import path
from . import views


urlpatterns = [
    path('', views.index, name="index"),
    path('anime/', views.getAnime),
    path('anime/create/', views.createAnime),
    path('anime/<str:pk>/', views.getAnimeByID),
    path('anime/<str:pk>/delete', views.deleteAnimeByID),
]
