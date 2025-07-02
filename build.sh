#!/bin/bash
pip install -r requirements.txt --no-deps
python manage.py collectstatic --noinput
# Build the project
echo "Building the project..."
python3.11 -m pip install -r requirements.txt

echo "Make Migration..."
python3.11 manage.py makemigrations --noinput
python3.11 manage.py migrate --noinput

echo "Collect Static..."
python3.11 manage.py collectstatic --noinput --clear
