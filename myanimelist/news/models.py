from django.db import models
from django.utils.text import slugify


# Create your models here.
class News(models.Model):
    title = models.CharField(max_length=100)
    body = models.TextField()
    category = models.CharField(max_length=20)
    publish = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    writers = models.CharField(max_length=50, default="author")
    slug = models.SlugField(blank=True, max_length=100, editable=False)

    def __str__(self):
        return f"{self.id} . {self.title}"
    
    def save(self):
        self.slug = slugify(self.title)
        super(News, self).save()
