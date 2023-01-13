from django.db import models
from django.utils.text import slugify


# Create your models here.
class Anime(models.Model):
    mal_id = models.IntegerField(unique=True)
    anime_title = models.CharField(max_length=255)
    anime_rating = models.DecimalField(decimal_places=2, max_digits=10)
    airing_time = models.CharField(max_length=20, blank=True)
    studio = models.CharField(max_length=50, blank=True)
    slug = models.SlugField(blank=True, max_length=255, editable=False)

    def save(self, force_insert=True, force_update=True):
        self.slug = slugify(self.anime_title)
        super(Anime, self).save()

    def __str__(self):
        return f"{self.id}. {self.anime_title}"
