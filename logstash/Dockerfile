FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

RUN apt-get update && apt-get -y install python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

# automatically accept oracle license
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
# and install java 7 oracle jdk
RUN apt-get -y install wget oracle-java7-installer && apt-get clean
RUN update-alternatives --display java
RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment

RUN wget https://download.elasticsearch.org/logstash/logstash/logstash-1.2.1-flatjar.jar -O /opt/logstash.jar --no-check-certificate
ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
RUN rm -rf /tmp/*

EXPOSE 514
EXPOSE 9200
EXPOSE 9292
EXPOSE 9300

CMD ["/usr/local/bin/run.sh"]