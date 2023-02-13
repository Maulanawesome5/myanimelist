# Generated by Django 3.2.16 on 2023-02-13 06:42

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Anime',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mal_id', models.IntegerField(unique=True)),
                ('anime_title', models.CharField(max_length=255)),
                ('anime_score', models.DecimalField(decimal_places=2, max_digits=10)),
                ('airing_time', models.CharField(blank=True, max_length=50)),
                ('studio', models.CharField(blank=True, max_length=50)),
                ('slug', models.SlugField(editable=False, max_length=255)),
                ('updated', models.DateTimeField(auto_now=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'ordering': ['-updated'],
            },
        ),
    ]
