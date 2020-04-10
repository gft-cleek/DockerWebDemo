FROM centos:latest
MAINTAINER GFT
RUN yum -y install httpd
COPY index.html docker_flight.gif /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FORGROUND"]
EXPOSE 80