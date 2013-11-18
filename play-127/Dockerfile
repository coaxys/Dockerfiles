FROM coaxys/oracle-jdk:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

RUN apt-get update && apt-get -y install python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install unzip && apt-get clean
RUN mkdir /opt/play && cd /opt/play
RUN wget http://downloads.typesafe.com/play/1.2.7/play-1.2.7.zip
RUN unzip play-1.2.7.zip
RUN mv play-1.2.7 /opt/play
RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.2.7/play 1
RUN echo "PLAY_HOME=/opt/play/play-1.2.7" >> /etc/environment
RUN mkdir -p /app

EXPOSE 9000

CMD ["help"]
ENTRYPOINT ["/opt/play/play-1.2.7/play"]
