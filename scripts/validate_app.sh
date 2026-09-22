#!/bin/bash
set -e

echo "Checking Flask application..."

STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:8000)

echo "Application returned HTTP status: $STATUS"

if [ "$STATUS" = "200" ]; then
    echo "Flask application is healthy."
else
    echo "Flask application health check failed."
    exit 1
fi
