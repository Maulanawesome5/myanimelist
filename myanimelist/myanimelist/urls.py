from django.contrib import admin
from django.urls import path, include
from . import views


urlpatterns = [
    path('admin/', admin.site.urls),
    # path('api/', include("api.urls"), name="api"),
    # path('', views.index, name="index"),
    path('', include("api.urls")),
    path('news/', include("news.urls")),
]
