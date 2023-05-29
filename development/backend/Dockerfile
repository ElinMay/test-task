# Use the official Nginx base image
FROM nginx

# Remove duplicate daemon directive
RUN sed -i '/daemon off;/d' /etc/nginx/nginx.conf

# Set default value for hello message
ARG HELLO_MESSAGE="Hello"

# Copy custom HTML template to Nginx default directory
COPY server/index.html /usr/share/nginx/html/index.template.html

# Replace placeholder with custom hello message using sed
RUN sed -i "s/{{HELLO_MESSAGE}}/$HELLO_MESSAGE/" /usr/share/nginx/html/index.template.html && mv /usr/share/nginx/html/index.template.html /usr/share/nginx/html/index.html