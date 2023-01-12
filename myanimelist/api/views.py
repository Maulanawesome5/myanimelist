from rest_framework.decorators import api_view
from rest_framework.response import Response


# Create your views here.
@api_view(["GET"])
def getRoutes(self):
    routes = {
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
