# Use the official Nginx base image
FROM nginx

# Set default value for hello message
ARG HELLO_MESSAGE="Hello"

# Copy custom configuration file to Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copy custom HTML template to Nginx default directory
COPY index.template.html /usr/share/nginx/html/index.template.html

# Replace placeholder with custom hello message
RUN envsubst '$HELLO_MESSAGE' < /usr/share/nginx/html/index.template.html > /usr/share/nginx/html/index.html
