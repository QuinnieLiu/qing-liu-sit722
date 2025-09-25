#!/bin/sh

# Substitute environment variables in main.js
envsubst < /usr/share/nginx/html/main.js > /usr/share/nginx/html/main.js.tmp
mv /usr/share/nginx/html/main.js.tmp /usr/share/nginx/html/main.js

# Start nginx
exec "$@"