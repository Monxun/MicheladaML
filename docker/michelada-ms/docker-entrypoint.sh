#!/bin/sh

python manage.py makemigrations --settings=$DJANGO_PROJECT.settings.development
python manage.py migrate --settings=$DJANGO_PROJECT.settings.development
python manage.py collectstatic --settings=$DJANGO_PROJECT.settings.development --noinput
python manage.py runserver 0.0.0.0:$SERVER_PORT --settings=$DJANGO_PROJECT.settings.development

