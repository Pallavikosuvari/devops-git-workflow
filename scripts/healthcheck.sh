#!/bin/bash
# Simple service health check
URL=${1:-http://localhost:8080}
if curl -sf "$URL" > /dev/null; then
  echo "OK: $URL is up"
else
  echo "FAIL: $URL is down"; exit 1
fi
