#!/bin/sh
set -e

echo "Starting Django backend..."

# Make sure Python sees the project
export PYTHONPATH=/app
export DJANGO_SETTINGS_MODULE=backend.settings

# Run database migrations
echo "Applying migrations..."
python manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Start Gunicorn
echo "Starting Gunicorn..."
gunicorn backend.wsgi:application \
  --bind 0.0.0.0:8000 \
  --workers 3 \
  --timeout 120
