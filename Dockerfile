# Image tag registry.abacoon.com.ar/rak/website

# Use official nginx image as base
FROM nginx:alpine

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf
# COPY default.conf /etc/nginx/conf.d/default.conf

# Copy website files to nginx html directory
COPY pdf/ /usr/share/nginx/html/pdf/
COPY robots.txt /usr/share/nginx/html/robots.txt
COPY sitemap.xml /usr/share/nginx/html/sitemap.xml
COPY imagenes/ /usr/share/nginx/html/imagenes/
COPY css/ /usr/share/nginx/html/css/
COPY index.html /usr/share/nginx/html/index.html