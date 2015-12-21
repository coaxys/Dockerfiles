FROM coaxys/oracle-jdk-8:1.8.0_66
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN mkdir -p /opt/play && cd /opt/play
RUN wget https://github.com/playframework/play1/releases/download/1.4.0/play-1.4.0.zip
RUN unzip play-1.4.0.zip
RUN mv play-1.4.0 /opt/play/play-1.4.0
RUN chmod +x /opt/play/play-1.4.0/play
RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.4.0/play 1
RUN mkdir -p /app

ENV PLAY_HOME /opt/play/play-1.4.0

EXPOSE 9000

CMD ["help"]
ENTRYPOINT ["/opt/play/play-1.4.0/play"]
