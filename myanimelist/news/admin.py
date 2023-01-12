from django.contrib import admin
from .models import News


# Register your models here.
class NewsAdmin(admin.ModelAdmin):
    readonly_fields = ['slug', 'publish', 'updated']

admin.site.register(News, NewsAdmin)
