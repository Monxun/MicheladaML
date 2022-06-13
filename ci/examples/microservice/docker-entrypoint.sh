#!/bin/sh

python manage.py makemigrations --settings=core.settings.development
python manage.py migrate --settings=core.settings.development
python manage.py collectstatic --settings=core.settings.development --noinput
python manage.py runserver 0.0.0.0:$DJANGO_PORT --settings=core.settings.development

