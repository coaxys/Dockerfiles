FROM coaxys/ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update

# automatically accept oracle license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# and install java 8 oracle jdk
RUN apt-get -y install oracle-java8-installer oracle-java8-set-default

# cleaup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/oracle-jdk8-installer

# Define working directory.
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define default command.
CMD ["bash"]