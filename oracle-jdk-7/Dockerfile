FROM coaxys/ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update

# automatically accept oracle license
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# and install java 7 oracle jdk
RUN apt-get -y install oracle-java7-installer oracle-java7-set-default

RUN apt-get clean
RUN update-alternatives --display java
RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment
