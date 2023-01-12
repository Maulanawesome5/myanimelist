from django.urls import path
from . import views


urlpatterns = [
    path('', views.getNews, name="index"),
    # path('create/', views.writeNews), # Error force_insert
    # path('<int:pk>/update/', views.updateNews), # Input success but not saved
    path('<int:pk>/delete', views.deleteNews),
    path('<int:pk>/<slug:slug>/', views.detailContent),
]
