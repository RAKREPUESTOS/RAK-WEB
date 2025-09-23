# Image tag registry.abacoon.com.ar/rak/website

# Use official nginx image as base
FROM nginx:alpine

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf
# COPY default.conf /etc/nginx/conf.d/default.conf

# Copy website files to nginx html directory
COPY . /usr/share/nginx/html