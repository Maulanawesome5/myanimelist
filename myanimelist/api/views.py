from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import Anime
from .serializers import AnimeSerializer


@api_view(["GET"])
def getRoutes(reuqest):
    routes = {
        "animelist" : [
            {
                "Endpoint" : "/anime/",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan daftar anime yang terdapat di database."
            },
            {
                "Endpoint" : "/anime/id",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan satu data anime berdasarkan MAL ID."
            },
            {
                "Endpoint" : "/anime/id/slug",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan satu data anime berdasarkan id database dan slug judul"
            },
            {
                "Endpoint" : "/anime/id/delete",
                "method" : "DELETE",
                "body" : None,
                "description" : "Menghapus satu data anime berdasarkan MAL ID."
            }
        ],
        "berita" : [
            {
                "Endpoint" : "/berita/",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan daftar postingan berita di dalam database."
            },
            {
                "Endpoint" : "/berita/id",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan satu postingan berita berdasarkan id."
            },
            {
                "Endpoint" : "/berita/id/delete",
                "method" : "DELETE",
                "body" : None,
                "description" : "Menghapus satu postingan berita berdasarkan id."
            },
        ]
    }
    return Response(routes)

@api_view(["GET"])
def getAnime(request):
    """
    Menampilkan seluruh data anime yang ada di dalam database.
    Contoh -> http://localhost:8000/animelist/anime/
    """
    anime = Anime.objects.all()
    serializer = AnimeSerializer(anime, many=True)
    return Response(serializer.data)

@api_view(["GET"])
def getAnimeByID(request, pk):
    """
    Menampilkan data anime yang ada di dalam database berdasarkan id database.
    Contoh -> http://localhost:8000/animelist/anime/5/
    """
    anime = Anime.objects.get(id=pk)
    serializer = AnimeSerializer(anime, many=False)
    return Response(serializer.data)

@api_view(["GET"])
def getAnimeSlug(request, pk, inputSlug):
    """
    Mengakses data anime berdasarkan id dan slug. Studi kasus untuk membuat hyperlink.
    Contoh -> http://localhost:8000/animelist/anime/5/blood-c-the-last-dark
    """
    anime = Anime.objects.get(id=pk, slug=inputSlug)
    serializer = AnimeSerializer(anime, many=False)
    return Response(serializer.data)

@api_view(["DELETE"])
def deleteAnime(request, pk):
    """
    Menghapus satu data anime berdasarkan urutan id di dalam database.
    Contoh -> http://localhost:8000/animelist/anime/7/delete/
    """
    anime = Anime.objects.get(id=pk)
    anime.delete()
    return Response("Data anime telah dihapus !")
