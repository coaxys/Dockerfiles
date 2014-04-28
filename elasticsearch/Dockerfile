FROM coaxys/oracle-jdk:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN (cd /tmp && wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.1.1.tar.gz -O elasticsearch.tar.gz && tar -xzf elasticsearch.tar.gz && mv elasticsearch-* /opt/elasticsearch)
RUN rm -rf /tmp/*

ADD elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml

# Create the Elasticsearch data directory
RUN mkdir -p /data/data 
RUN mkdir -p /data/logs
RUN mkdir -p /data/work 
RUN mkdir -p /data/plugins

# Define mountable directories.
VOLUME ["/data"]

EXPOSE 9200
EXPOSE 9300

CMD ["-f"]
ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]
