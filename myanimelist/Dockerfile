# # Python installation
FROM python:3.10

# ENV PYTHONUNBUFFERED=1
# WORKDIR /myanimelist
# COPY requirements.txt requirements.txt
# RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1
WORKDIR /myanimelist
COPY requirements.txt /myanimelist/requirements.txt
RUN pip install -r requirements.txt
COPY . /myanimelist

# # DBMS installation
# FROM mariadb:latest
