#!/bin/bash

source init.sh
echo "DEPLOYING DJANGO SERVER..."
sleep 60s
python manage.py runserver 0.0.0.0:$DJANGO_PORT