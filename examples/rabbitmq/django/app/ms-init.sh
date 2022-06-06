#!/bin/bash

# CREATE PROJECT + APP
django-admin startproject core .
cd core
django-admin startapp $MS_NAME
cd ..
