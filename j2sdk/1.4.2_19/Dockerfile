FROM coaxys/ubuntu:14.04
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get -y install libc6-i386
RUN wget http://www.coaxys.com/public/j2sdk1.4.2_19.tar.gz
RUN tar -xzf j2sdk1.4.2_19.tar.gz
RUN rm j2sdk1.4.2_19.tar.gz
RUN mv j2sdk1.4.2_19 /opt

ENV JAVA_HOME /opt/j2sdk1.4.2_19
ENV PATH $PATH:$JAVA_HOME/bin
