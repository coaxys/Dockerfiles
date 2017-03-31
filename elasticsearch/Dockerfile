FROM coaxys/oracle-jdk-8:1.8.0_91
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN (cd /tmp && wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.1.tar.gz -O elasticsearch.tar.gz && tar -xzf elasticsearch.tar.gz && mv elasticsearch-* /opt/elasticsearch)
RUN rm -rf /tmp/*

ADD elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml

# Create the Elasticsearch data directory
RUN mkdir -p /data/data 
RUN mkdir -p /data/logs
RUN mkdir -p /data/work 
RUN mkdir -p /data/plugins
RUN mkdir -p /config

VOLUME ["/data"]
VOLUME ["/config"]

ENV PATH /opt/elasticsearch/bin:$PATH

EXPOSE 9200 9300

CMD ["elasticsearch"]
