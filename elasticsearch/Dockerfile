FROM coaxys/oracle-jdk:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

RUN apt-get update && apt-get -y install python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

RUN (cd /tmp && wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.tar.gz -O elasticsearch.tar.gz && tar -xzf elasticsearch.tar.gz && mv elasticsearch-* /opt/elasticsearch)
RUN rm -rf /tmp/*

ADD elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml

# Create the Elasticsearch data directory
RUN mkdir -p /data/data && mkdir -p /data/logs && mkdir -p /data/work && mkdir -p /data/plugins

EXPOSE 9200
EXPOSE 9300

CMD ["-f"]
ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]
