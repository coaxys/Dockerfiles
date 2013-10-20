FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get install -y python-software-properties

RUN add-apt-repository -y ppa:rethinkdb/ppa
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install rethinkdb

EXPOSE 8080

CMD ["--bind", "all"]
EXPOSE["rethinkdb"]