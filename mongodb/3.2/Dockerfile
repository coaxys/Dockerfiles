FROM coaxys/ubuntu:16.04
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Install MongoDB
RUN apt-get update
RUN apt-get install -y mongodb-org=3.2.4

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]
