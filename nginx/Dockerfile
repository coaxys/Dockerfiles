FROM coaxys/ubuntu:16.04
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN add-apt-repository ppa:nginx/stable
RUN apt-get update
RUN apt-get -y install nginx

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/www", "/etc/nginx/sites-enabled", "/var/log/nginx"]

WORKDIR /etc/nginx

EXPOSE 80
ENTRYPOINT ["nginx"]
