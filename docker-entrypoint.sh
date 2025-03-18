#!/bin/sh

# Run migrations
# python manage.py makemigrations
# python manage.py migrate

# # Create superuser (only if it doesn't exist)
# python manage.py shell <<EOF
# from django.contrib.auth import get_user_model
# User = get_user_model()
# if not User.objects.filter(username='mhacs').exists():
#     User.objects.create_superuser('mhacs', 'ekatisamuel@gmail.com', 'Hacs!1tack')
# EOF

# # Collect static files
# python manage.py collectstatic --noinput

# # Start Gunicorn server
# exec gunicorn --bind 0.0.0.0:8000 studentrecord.wsgi:application



#!/bin/sh

echo "Applying database migrations..."
python manage.py migrate --noinput

echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Creating superuser..."
python manage.py createsuperuser --noinput || true

echo "Starting Gunicorn server..."
exec gunicorn studentrecord.wsgi:application --bind 0.0.0.0:8000

