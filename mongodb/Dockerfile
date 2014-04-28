FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# Add 10gen official apt source to the sources list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

# Install MongoDB
RUN apt-get update
RUN apt-get install -y mongodb-org

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

EXPOSE 27017
ENTRYPOINT ["usr/bin/mongod"]
