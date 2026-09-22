#!/bin/bash
set -e

APP_DIR="/home/django/image_gallery_app"

echo "Installing Python dependencies..."

source "$APP_DIR/venv/bin/activate"

pip install --upgrade pip
pip install -r "$APP_DIR/requirements.txt"

echo "Dependencies installed successfully."
