#!/bin/bash
set -e

echo "Restarting Flask application..."

supervisorctl restart Djangoapp_gunicorn

echo "Flask application restarted successfully."
