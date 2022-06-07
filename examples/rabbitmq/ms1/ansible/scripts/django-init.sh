#!/bin/bash

# //////////////////////////////
# PLACE DEPENCENCIES HERE
# //////////////////////////////
cat <<EOF >$PLAYBOOK_DIR/app/requirements.txt

django
djangorestframework
django-cors-headers
pika

EOF

# //////////////////////////////
# CREATE .ENV FILE
# //////////////////////////////
cat <<EOF >$PLAYBOOK_DIR/app/.env

DJANGO_PORT=$DJANGO_PORT

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



