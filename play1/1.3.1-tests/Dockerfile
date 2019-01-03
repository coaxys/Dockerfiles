FROM coaxys/oracle-jdk-8:1.8.0_60
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# Install MongoDB
RUN apt-get update
RUN apt-get install mongodb-org-shell=3.0.6
RUN apt-get install mongodb-org-tools=3.0.6

RUN mkdir -p /opt/play && cd /opt/play
RUN wget http://downloads.typesafe.com/play/1.3.1/play-1.3.1.zip
RUN unzip play-1.3.1.zip
RUN mv play-1.3.1 /opt/play/play-1.3.1
RUN chmod +x /opt/play/play-1.3.1/play
RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.3.1/play 1
RUN mkdir -p /app

ENV PLAY_HOME /opt/play/play-1.3.1

EXPOSE 9000

ADD wait.sh /usr/bin/wait.sh

ENTRYPOINT ["/usr/bin/wait.sh"]