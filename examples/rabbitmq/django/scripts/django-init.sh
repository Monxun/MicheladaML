#!/bin/bash

# //////////////////////////////
# PLACE DEPENCENCIES HERE
# //////////////////////////////
cat <<EOF >../app/requirements.txt

django==3.1.3
djangorestframework==3.12.2
mysqlclient==2.0.1
djangomysql==3.9
django-cors-headers==3.5.0
pika==1.1.0

EOF

# //////////////////////////////
# CREATE .ENV FILE
# //////////////////////////////
cat <<EOF >../app/.env

DJANGO_PORT=$DJANGO_PORT

EOF

# //////////////////////////////
# CREATE PROJECT / APPS
# //////////////////////////////
source ../app/ms-init.sh

# //////////////////////////////
# CREATE IMAGE / PUSH
# //////////////////////////////
# source ./build.sh