# # Python installation
FROM python:3.10

# ENV PYTHONUNBUFFERED=1
# WORKDIR /myanimelist
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1
WORKDIR /My_Anime_List/
COPY requirements.txt /My_Anime_List/requirements.txt
RUN pip install -r requirements.txt
COPY . /My_Anime_List

# # DBMS installation
# FROM mariadb:latest
