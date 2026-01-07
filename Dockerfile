# Multi-stage optimized - ~10MB with busybox
# Ultra-minimal using busybox httpd
FROM busybox:latest

COPY ./content /var/www

EXPOSE 80

CMD ["busybox", "httpd", "-f", "-v", "-h", "/var/www"]
