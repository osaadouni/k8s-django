python manage.py migrate
gunicorn kubernetes_django.wsgi --bind 0.0.0.0:8000 --log-level info --timeout 180 --workers 3
