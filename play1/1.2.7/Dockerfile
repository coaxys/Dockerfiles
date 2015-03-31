FROM coaxys/oracle-jdk-7:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN mkdir -p /opt/play && cd /opt/play
RUN wget http://downloads.typesafe.com/play/1.2.7/play-1.2.7.zip
RUN unzip play-1.2.7.zip
RUN mv play-1.2.7 /opt/play
RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.2.7/play 1
RUN echo "PLAY_HOME=/opt/play/play-1.2.7" >> /etc/environment
RUN mkdir -p /app

EXPOSE 9000

CMD ["help"]
ENTRYPOINT ["/opt/play/play-1.2.7/play"]
