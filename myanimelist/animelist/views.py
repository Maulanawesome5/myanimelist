from rest_framework.decorators import api_view
from rest_framework.response import Response

# Create your views here.
method_get = 'GET'
method_post = 'POST'
method_update = 'PUT'
method_delete = 'DELETE'

@api_view([method_get])
def index(request):
    return Response("AnimeList site")
