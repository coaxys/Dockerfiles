FROM coaxys/ubuntu:16.04
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update

# automatically accept oracle license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# and install java 8 oracle jdk
RUN apt-get -y install oracle-java8-installer oracle-java8-set-default

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
