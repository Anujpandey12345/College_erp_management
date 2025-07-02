#!/bin/bash

# Install required packages
echo "Installing dependencies..."
python3.11 -m pip install --upgrade pip
python3.11 -m pip install -r requirements.txt

# Run migrations
echo "Running database migrations..."
python3.11 manage.py makemigrations --noinput
python3.11 manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python3.11 manage.py collectstatic --noinput --clear

echo "Build completed successfully."
