FROM coaxys/oracle-jdk-11:11.0.1
LABEL maintainer.name="Nicolas Giard"
LABEL maintainer.email="nicolas.giard@coaxys.com"

RUN mkdir -p /opt/play \
    && cd /opt/play \
    && wget https://downloads.typesafe.com/play/1.5.2/play-1.5.2.zip \
    && unzip play-1.5.2.zip \
    && rm play-1.5.2.zip \
    && chmod +x /opt/play/play-1.5.2/play

RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.5.2/play 1
RUN mkdir -p /app

ENV PLAY_HOME /opt/play/play-1.5.2

EXPOSE 9000

CMD ["help"]
ENTRYPOINT ["/opt/play/play-1.5.2/play"]
