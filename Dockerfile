FROM amazonlinux:latest
MAINTAINER GFT
RUN yum -y install httpd
COPY index.html containercat.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FORGROUND"]
EXPOSE 80