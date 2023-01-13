from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import AnimeSerializer
from .models import Anime


# Create your views here.
method_get = 'GET'
method_post = 'POST'
method_update = 'PUT'
method_delete = 'DELETE'

@api_view([method_get])
def index(request):
    routes = [
        {
            "Endpoint" : "/anime/",
            "method" : "GET",
            "body" : None,
            "description" : "Menampilkan daftar anime yang ada dalam database."
        },
        {
            "Endpoint" : "/anime/id",
            "method" : "GET",
            "body" : None,
            "description" : "Menampilkan satu data anime sesuai dengan MAL ID"
        },
        {
            "Endpoint" : "/anime/id/delete",
            "method" : "DELETE",
            "body" : None,
            "description" : "Menghapus satu data anime sesuai dengan MAL ID"
        },
    ]
    return Response(routes)

@api_view([method_get])
def getAnime(request):
    """Function ini untuk menampilkan daftar anime yang tersedia di dalam database"""
    anime = Anime.objects.all()
    serializer = AnimeSerializer(anime, many=True)
    return Response(serializer.data)

@api_view([method_get])
def getAnimeByID(request, pk):
    """Function ini untuk menampilkan satu data anime yang sesuai MAL ID"""
    anime = Anime.objects.get(mal_id=pk)
    serializer = AnimeSerializer(anime, many=False)
    return Response(serializer.data)

@api_view([method_post])
def createAnime(request):
    data = request.data
    anime = Anime.objects.create(
        mal_id=data["mal_id"],
        anime_title=data["anime_title"],
        anime_rating=data["anime_rating"],
        airing_time=data["airing_time"],
        studio=data["studio"]
    )
    serializer = AnimeSerializer(anime, many=False)
    return Response(serializer.data)

@api_view([method_delete])
def deleteAnimeByID(request, pk):
    """Function ini untuk menghapus satu data anime yang sesuai MAL ID"""
    anime = Anime.objects.get(mal_id=pk)
    anime.delete()
    return Response("Record telah dihapus !")
