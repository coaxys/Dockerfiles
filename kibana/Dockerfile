FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe multiverse" > /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install python-software-properties
RUN add-apt-repository ppa:nginx/stable

RUN apt-get install -y wget nginx
RUN (cd /tmp && wget --no-check-certificate https://download.elasticsearch.org/kibana/kibana/kibana-3.0.0milestone4.tar.gz -O kibana.tar.gz && tar zxf kibana.tar.gz && cd kibana-* && cp -rf ./* /usr/share/nginx/www/)
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
RUN rm -rf /tmp/*

EXPOSE 80

CMD ["/usr/local/bin/run.sh"]
