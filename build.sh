#!/bin/bash

# Install dependencies
echo "Installing requirements..."
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

# Run database migrations
echo "Running migrations..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
mkdir -p staticfiles_build
python3 manage.py collectstatic --noinput --clear --verbosity 0

echo "Build completed successfully."
