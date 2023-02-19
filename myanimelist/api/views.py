from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import Anime, Berita
from .serializers import AnimeSerializer, BeritaSerializer
from django.shortcuts import render


def index(request):
    """
    Function untuk menampilkan query data ke views HTML
    """
    anime = Anime.objects.all()
    context = {
        "judul" : "Api",
        "website" : "MyAnimeList Indonesia",
        "data_anime" : anime,
    }
    return render(request, "api/index.html", context)

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
                "Endpoint" : "/anime/id/",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan satu data anime berdasarkan primary key"
            },
            {
                "Endpoint" : "/anime/id/slug/",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan satu data anime berdasarkan primary key dan slug judul"
            },
            {
                "Endpoint" : "/anime/create/",
                "method" : "POST",
                "body" : {
                    "mal_id" : 0,
                    "anime_title" : "",
                    "anime_score" : 0.0,
                    "airing_time" : "",
                    "studio" : ""
                },
                "description" : "Menambahkan data anime baru melalui API."
            },
            {
                "Endpoint" : "/anime/id/update/",
                "method" : "PUT",
                "body" : {
                    "mal_id" : 0,
                    "anime_title" : "",
                    "anime_score" : 0.0,
                    "airing_time" : "",
                    "studio" : ""
                },
                "description" : "Mengubah satu data anime berdasarkan primary key."
            },
            {
                "Endpoint" : "/anime/id/delete/",
                "method" : "DELETE",
                "body" : None,
                "description" : "Menghapus satu data anime berdasarkan primary key."
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
                "description" : "Menampilkan satu postingan berita berdasarkan primary key."
            },
            {
                "Endpoint" : "/berita/id/delete",
                "method" : "DELETE",
                "body" : None,
                "description" : "Menghapus satu postingan berita berdasarkan primary key."
            },
        ]
    }
    return Response(routes)

@api_view(["GET"])
def getAnime(request):
    """
    Function untuk menampilkan seluruh data anime yang ada di dalam database.
    Contoh -> http://localhost:8000/animelist/anime/
    """
    anime = Anime.objects.all()
    serializer = AnimeSerializer(anime, many=True)
    return Response(serializer.data)

@api_view(["GET"])
def getAnimeByID(request, pk):
    """
    Function untuk menampilkan data anime yang ada di dalam database berdasarkan id database.
    Contoh -> http://localhost:8000/animelist/anime/5/
    """
    anime = Anime.objects.get(id=pk)
    serializer = AnimeSerializer(anime, many=False)
    return Response(serializer.data)

@api_view(["GET"])
def getAnimeSlug(request, pk, inputSlug):
    """
    Function untuk mengakses data anime berdasarkan id dan slug. Studi kasus untuk membuat hyperlink.
    Contoh -> http://localhost:8000/animelist/anime/5/blood-c-the-last-dark
    """
    anime = Anime.objects.get(id=pk, slug=inputSlug)
    serializer = AnimeSerializer(anime, many=False)
    return Response(serializer.data)

@api_view(["POST"])
def createAnime(request):
    """
    Function untuk menambahkan data baru melalui halaman API
    Contoh -> http://localhost:8000/animelist/anime/create/
    """
    data = request.data
    anime = Anime.objects.create(
        mal_id=data["mal_id"],
	    anime_title=data["anime_title"],
	    anime_score=data["anime_score"],
	    airing_time=data["airing_time"],
	    studio=data["studio"]
    )
    serializer = AnimeSerializer(anime, many=False)
    return Response(serializer.data)

@api_view(["PUT"])
def updateAnime(request, pk):
    """
    Function untuk mengupdate data anime melalui halaman API berdasarkan primary key
    Contoh -> http://localhost:8000/animelist/anime/9/update/
    """
    data = request.data
    anime = Anime.objects.get(id=pk)
    serializer = AnimeSerializer(anime, data=request.data)
    
    if serializer.is_valid():
        serializer.save()
    
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

@api_view(["GET"])
def getNews(request):
    """
    Function untuk menampilkan seluruh data berita yang ada di dalam database.
    Contoh -> http://localhost:8000/berita/
    """
    berita = Berita.objects.all()
    serializer = BeritaSerializer(berita, many=True)
    return Response(serializer.data)

@api_view(["GET"])
def getNewsByCategory(request, inputCategory):
    """
    Function untuk memfilter berita berdasarkan kategori berita.
    Contoh -> http://localhost:8000/berita/hot_news/
    """
    berita = Berita.objects.filter(content_category=inputCategory)
    serializer = BeritaSerializer(berita, many=True)
    return Response(serializer.data)

@api_view(["GET"])
def getNewsDetail(request, inputCategory, pk, inputSlug):
    """
    Function untuk menampilkan satu berita sesuai kategori, primary key, dan slug judul berita.
    Studi kasus untuk hyperlink, menampilkan detail berita, dan menyalin URL konten tertentu.
    Contoh -> http://localhost:8000/berita/hot_news/4/serial-boruto-dikabarkan-hiatus-masashi-fokus-remake/
    """
    berita = Berita.objects.get(
        content_category=inputCategory,
        id=pk,
        slug=inputSlug
    )
    serializer = BeritaSerializer(berita, many=False)
    return Response(serializer.data)

