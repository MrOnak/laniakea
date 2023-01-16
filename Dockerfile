FROM busybox:musl

# static files are being mounted from host
#COPY static /home/static
# Copy httpd config
COPY httpd.conf /etc
# add httpd.conf file
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000", "-h", "/home/static", "-c", "/etc/httpd.conf"]
