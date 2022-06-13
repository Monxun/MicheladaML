#!/bin/bash

# //////////////////////////////
# PLACE DEPENCENCIES HERE
# //////////////////////////////
cat <<EOF >$PLAYBOOK_DIR/app/requirements.txt

django
django-ninja
psycopg2-binary
pika

EOF

# mapfile -t $MS_DEPENCENCIES > $PLAYBOOK_DIR/app/requirements.txt

# //////////////////////////////
# CREATE .ENV FILE
# //////////////////////////////
cat <<EOF >$PLAYBOOK_DIR/app/.env

DJANGO_PORT=$DJANGO_PORT
DJANGO_SECRET_KEY=$DJANGO_SECRET_KEY
DJANGO_ALLOWED_HOSTS=$DJANGO_ALLOWED_HOSTS
DJANGO_DEBUG=$DJANGO_DEBUG

DB_ENGINE=$DB_ENGINE
DB_NAME=$DB_NAME
DB_USER=$DB_USER
DB_PASSWORD=$DB_PASSWORD
DB_HOST=db-$MS_NAME
DB_PORT=$DB_PORT
DB_OPTIONS=$DB_OPTIONS

POSTGRES_USER=$DB_USER
POSTGRES_PASSWORD=$DB_PASSWORD
POSTGRES_DB=$DB_NAME

EOF

# //////////////////////////////
# CREATE PROJECT / APPS
# //////////////////////////////
if [[ ! -d "$PLAYBOOK_DIR/app/core/api" ]]
then
    cd ../app
    django-admin startproject core .
    cd core
    django-admin startapp api
    cd ../..
    exit
fi



