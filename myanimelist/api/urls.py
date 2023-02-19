from django.urls import path
from . import views


urlpatterns = [
    path('', views.getRoutes, name="index"),
    # path('', views.index),
    path('animelist/anime/', views.getAnime, name="animelist"),
    path('animelist/anime/create/', views.createAnime),
    path('animelist/anime/<str:pk>/update/', views.updateAnime),
    path('animelist/anime/<str:pk>/delete/', views.deleteAnime),
    path('animelist/anime/<str:pk>/', views.getAnimeByID),
    path('animelist/anime/<str:pk>/<str:inputSlug>/', views.getAnimeSlug),
    path('berita/', views.getNews, name="berita"),
    path('berita/<str:inputCategory>/', views.getNewsByCategory),
    path('berita/<str:inputCategory>/<str:pk>/<str:inputSlug>/', views.getNewsDetail),
]
