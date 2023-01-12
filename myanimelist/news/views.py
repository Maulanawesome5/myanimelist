from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import NewsSerializer
from .models import News


method_get = 'GET'
method_post = 'POST'
method_update = 'PUT'
method_delete = 'DELETE'

# Create your views here.
@api_view([method_get])
def getNews(request):
    news = News.objects.all()
    serializer = NewsSerializer(news, many=True)
    return Response(serializer.data)

@api_view([method_get])
def detailContent(request, pk, slug):
    """
    Funtion ini untuk menampilkan konten News berdasarkan URL
    seperti http://nama_domain.com/news/1/judul-konten-berita
    """
    news = News.objects.get(id=pk, slug=slug)
    serializer = NewsSerializer(news, many=False)
    return Response(serializer.data)

@api_view([method_update])
def updateNews(request, pk):
    """Function ini masih dalam tahap development. Belum bisa dipakai"""
    data = request.data
    news = News.objects.get(id=pk)
    serializer = NewsSerializer(news, data=request.data)
    if serializer.is_valid():
        serializer.save()
    return Response(serializer.data)

@api_view([method_delete])
def deleteNews(request, pk):
    """
    Function ini untuk menghapus data berdasarkan primary key data News
    URL yang dipakai http://nama_domain.com/news/1/delete
    """
    news = News.objects.get(id=pk)
    news.delete()
    return Response("Berita telah dihapus!")
