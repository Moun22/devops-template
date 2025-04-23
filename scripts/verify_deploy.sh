#!/bin/bash
# Verify if the deployment is successful:
# - Check service health endpoint
# - Retry on failure and print response

URL="http://localhost:8000/health"
for i in {1..5}; do
  STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)
  if [ "$STATUS" == "200" ]; then
    echo "✅ App is healthy"
    exit 0
  fi
  echo "⏳ Waiting for service... ($i/5)"
  sleep 5
done

echo "❌ Deployment check failed"
exit 1
