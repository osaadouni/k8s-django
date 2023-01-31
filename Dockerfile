FROM python:3.8-slim
LABEL maintainer="Omar Saadouni<raptivistos@gmail.com>" 

ENV PROJECT_ROOT /app
WORKDIR $PROJECT_ROOT

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD python manage.py runserver 0.0.0.0:8000
