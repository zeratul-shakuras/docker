FROM ubuntu:14.04

MAINTAINER "heedo hong <achadol@gmail.com>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./index.html /var/www/html
WORKDIR /var/www/html

EXPOSE 80

CMD apachectl -D FOREGROUND
