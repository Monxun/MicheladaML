#!/bin/bash

source init.sh
echo "DEPLOYING DJANGO SERVER..."
python manage.py runserver 0.0.0.0:$DJANGO_PORT