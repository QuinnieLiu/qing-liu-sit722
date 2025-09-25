FROM nginx:alpine

# Install envsubst (part of gettext package)
RUN apk add --no-cache gettext

# Copy static files
COPY index.html main.js /usr/share/nginx/html/

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy startup script
COPY substitute-vars.sh /substitute-vars.sh
RUN chmod +x /substitute-vars.sh

# Expose port
EXPOSE 80

# Use custom entrypoint to substitute environment variables
ENTRYPOINT ["/substitute-vars.sh"]
CMD ["nginx", "-g", "daemon off;"]