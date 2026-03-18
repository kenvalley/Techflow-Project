#!/bin/bash

URL="http://localhost:5000"

echo "Running health check..."

sleep 5

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS" -ne 200 ]; then
  echo "Health check failed!"
  exit 1
else
  echo "Health check passed!"
  exit 0
fi
