from django.contrib import admin
from .models import Anime, Berita

# Register your models here.
class AnimeAdmin(admin.ModelAdmin):
    readonly_fields = ["slug", "updated", "created"]

class BeritaAdmin(admin.ModelAdmin):
    readonly_fields = ["slug", "posted", "updated"]

admin.site.register(Anime, admin_class=AnimeAdmin)
admin.site.register(Berita, admin_class=BeritaAdmin)
