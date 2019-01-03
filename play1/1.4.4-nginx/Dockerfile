FROM coaxys/play1:1.4.4
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN add-apt-repository ppa:nginx/stable
RUN apt-get update
RUN apt-get -y install nginx

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

COPY start.sh /start.sh

VOLUME ["/www", "/etc/nginx/sites-enabled", "/var/log/nginx"]

EXPOSE 80
ENTRYPOINT ["/start.sh"]
