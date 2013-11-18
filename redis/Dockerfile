FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

RUN apt-get update && apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:rethinkdb/ppa
RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install redis-server

EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]