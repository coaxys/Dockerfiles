FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y wget gcc make g++ build-essential libc6-dev tcl

RUN (cd /tmp && wget http://download.redis.io/releases/redis-2.6.16.tar.gz && tar -xzf redis-2.6.16.tar.gz && mv redis-2.6.16 /redis)
RUN rm -rf /tmp/*

RUN (cd /redis && make)

RUN mkdir -p /data
VOLUME ["/data"]
EXPOSE 6379

CMD ["--dir", "/data"]
ENTRYPOINT ["/redis/src/redis-server"]
