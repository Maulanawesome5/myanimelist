from django.shortcuts import render


def index(request):
    context = {
        "page_title" : "Home",
        "website" : "My Anime List Indonesia",
    }
    return render(request, "index.html", context)
