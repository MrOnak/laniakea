FROM lipanski/docker-static-website:latest

# Copy your static files
COPY static .

# add httpd.conf file
CMD ["/busybox", "httpd", "-f", "-v", "-p", "3000", "-c", "httpd.conf"]
