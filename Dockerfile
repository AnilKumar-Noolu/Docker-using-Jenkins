FROM ubuntu
MAINTAINER Anil-Kumar
RUN apt update && apt-get install nginx -y
COPY index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
