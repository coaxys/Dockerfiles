FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get install -y python-software-properties
 
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get install -y unzip nodejs
 
ADD https://en.ghost.org/zip/ghost-0.3.2.zip /opt/ghost-0.3.2.zip
RUN unzip /opt/ghost-0.3.2.zip -d /opt/ghost
RUN cd /opt/ghost && npm install --production
 
ADD config.js /opt/ghost/config.js
 
WORKDIR /opt/ghost
 
EXPOSE 2368

ENTRYPOINT ["/usr/bin/npm", "start"]