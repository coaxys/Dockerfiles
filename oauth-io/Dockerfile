FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get install -y python-software-properties
 
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install -y unzip nodejs make gcc g++

RUN npm install -g coffee-script grunt-cli forever

ADD https://github.com/oauth-io/oauthd/archive/master.zip /opt/oauthd.zip
RUN unzip /opt/oauthd.zip -d /opt/
RUN mv /opt/oauthd-master /opt/oauthd
RUN cd /opt/oauthd && npm install

ADD config.js /opt/oauthd/config.js
ADD start.sh /opt/oauthd/start.sh
RUN chmod +x /opt/oauthd/start.sh

WORKDIR /opt/oauthd

RUN cd /opt/oauthd && npm install -g coffee-script grunt-cli forever
RUN cd /opt/oauthd && grunt && cd ./plugins/server.admin && npm install && grunt

EXPOSE 6284

CMD ["/opt/oauthd/start.sh"]
