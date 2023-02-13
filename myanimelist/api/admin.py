from django.contrib import admin

# Register your models here.
from .models import Anime

class AnimeAdmin(admin.ModelAdmin):
    readonly_fields = ["slug", "updated", "created"]

admin.site.register(Anime, AnimeAdmin)
