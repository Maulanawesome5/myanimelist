from django.db import models
from django.utils.text import slugify


# Create your models here.
class Anime(models.Model):
    mal_id = models.IntegerField(unique=True)
    anime_title = models.CharField(max_length=255)
    anime_score = models.DecimalField(decimal_places=2, max_digits=10, default=0)
    airing_time = models.CharField(max_length=50, blank=True)
    studio = models.CharField(max_length=50, blank=True)
    slug = models.SlugField(max_length=255, editable=False)
    updated = models.DateTimeField(auto_now=True)
    created = models.DateTimeField(auto_now_add=True)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.anime_title)
        super(Anime, self).save(*args, **kwargs)

    def __str__(self):
        return f"{self.id}. {self.anime_title}"

    class Meta:
        ordering = ["-updated"]


class Berita(models.Model):
    """
    Class ini untuk membuat tabel database berupa konten artikel.
    Ada 3 macam kategori artikel, yaitu hot_news, incoming_event, dan announcement.
    Juga ada konten dummy, namun hanya untuk inisalisasi data.
    """
    content_title = models.CharField(max_length=100)
    content_body = models.TextField()
    writers = models.CharField(max_length=50)
    content_category = models.CharField(max_length=50)
    posted = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    slug = models.SlugField(max_length=255, editable=False, unique=True)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.content_title)
        super(Berita, self).save(*args, **kwargs)
    
    def __str__(self):
        return f"{self.content_title}"

    class Meta:
        ordering = ["-posted"]
