# Use a base image with Apache HTTP Server pre-installed
FROM httpd:latest

# Copy custom configuration files to the container
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy web content to the container
COPY ./html/ /usr/local/apache2/htdocs/

# Expose the default Apache port (adjust as needed)
EXPOSE 80

# Define the command to start Apache
CMD ["httpd", "-D", "FOREGROUND"]
