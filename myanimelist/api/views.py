from rest_framework.decorators import api_view
from rest_framework.response import Response


# Create your views here.
@api_view(["GET"])
def getRoutes(self):
    routes = {
        "animelist" : [
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
        ],
        "news" : [
            {
                "Endpoint" : "/news/",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan daftar postingan berita.",
            },
            {
                "Endpoint" : "/news/id/slug",
                "method" : "GET",
                "body" : None,
                "description" : "Menampilkan satu konten berita berdasarkan id dan slug",
            },
            {
                "Endpoint" : "/news/id/delete",
                "method" : "DELETE",
                "body" : None,
                "description" : "Menghapus konten berita berdasarkan primary key",
            },
        ]
    }
    return Response(routes)
