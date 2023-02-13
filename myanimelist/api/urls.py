from django.urls import path
from . import views


urlpatterns = [
    path('', views.getRoutes, name="index"),
    path('animelist/anime/', views.getAnime, name="animelist"),
    path('animelist/anime/<str:pk>/delete/', views.deleteAnime),
    path('animelist/anime/<str:pk>/', views.getAnimeByID),
    path('animelist/anime/<str:pk>/<str:inputSlug>/', views.getAnimeSlug),
]
