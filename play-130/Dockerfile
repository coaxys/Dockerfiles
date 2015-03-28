FROM coaxys/oracle-jdk-8:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN mkdir -p /opt/play && cd /opt/play
RUN wget http://downloads.typesafe.com/play/1.3.0/play-1.3.0.zip
RUN unzip play-1.3.0.zip
RUN mv play1-1.3.0 /opt/play/play-1.3.0
RUN chmod +x /opt/play/play-1.3.0/play
RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.3.0/play 1
RUN echo "PLAY_HOME=/opt/play/play-1.3.0" >> /etc/environment
RUN mkdir -p /app

EXPOSE 9000

CMD ["help"]
ENTRYPOINT ["/opt/play/play-1.3.0/play"]
