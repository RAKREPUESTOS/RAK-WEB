# Use official nginx image as base
FROM nginx:alpine

# Create non-root user for security
RUN addgroup -g 1001 -S nginxuser && \
    adduser -S -D -H -u 1001 -h /var/cache/nginx -s /sbin/nologin -G nginxuser -g nginxuser nginxuser

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy website files to nginx html directory
COPY . /usr/share/nginx/html

# Set proper ownership and permissions
RUN chown -R nginxuser:nginxuser /usr/share/nginx/html && \
    chown -R nginxuser:nginxuser /var/cache/nginx && \
    chown -R nginxuser:nginxuser /var/log/nginx && \
    chown -R nginxuser:nginxuser /etc/nginx/conf.d && \
    chown -R nginxuser:nginxuser /run && \
    chown -R nginxuser:nginxuser /var/run

# Remove unnecessary packages and files for smaller image
RUN rm -rf /var/cache/apk/* && \
    rm -rf /usr/share/nginx/html/Dockerfile && \
    rm -rf /usr/share/nginx/html/.dockerignore && \
    rm -rf /usr/share/nginx/html/.git*

# Switch to non-root user
USER nginxuser

# Expose port 80
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost/ || exit 1

# Start nginx
CMD ["nginx", "-g", "daemon off;"]