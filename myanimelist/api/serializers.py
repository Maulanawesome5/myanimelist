from rest_framework.serializers import ModelSerializer
from .models import Anime, Berita


class AnimeSerializer(ModelSerializer):
    class Meta:
        model = Anime
        fields = "__all__"

class BeritaSerializer(ModelSerializer):
    class Meta:
        model = Berita
        fields = "__all__"
