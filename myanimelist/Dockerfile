FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /anime_indonesia/
RUN pip install -r /anime_indonesia/requirements.txt

# Copy project
COPY . /anime_indonesia/
WORKDIR /anime_indonesia/