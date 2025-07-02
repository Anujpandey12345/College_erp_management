#!/bin/bash

echo "Installing dependencies..."
python3 -m pip install -r requirements.txt

echo "Running migrations..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Collecting static files from apps..."
mkdir -p staticfiles_build
python3 manage.py collectstatic --noinput --verbosity 2

echo "Collected files:"
ls -la staticfiles_build
