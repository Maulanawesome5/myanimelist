# Generated by Django 3.2.16 on 2023-01-12 14:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='news',
            name='slug',
            field=models.SlugField(blank=True, editable=False, max_length=100),
        ),
        migrations.AddField(
            model_name='news',
            name='writers',
            field=models.CharField(default='author', max_length=50),
        ),
    ]