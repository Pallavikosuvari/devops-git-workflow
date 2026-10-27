#!/bin/bash
# Simple service health check with retries
URL=${1:-http://localhost:8080}
RETRIES=${2:-3}

for i in $(seq 1 "$RETRIES"); do
  if curl -sf "$URL" > /dev/null; then
    echo "OK: $URL is up"
    exit 0
  fi
  echo "Attempt $i/$RETRIES failed, retrying..."
  sleep 2
done

echo "FAIL: $URL is down"
exit 1