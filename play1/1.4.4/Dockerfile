FROM coaxys/oracle-jdk-8:1.8.0_131
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# Create and move to play directory
RUN mkdir -p /opt/play && cd /opt/play
# Download sources
RUN wget https://downloads.typesafe.com/play/1.4.4/play-1.4.4.zip
# Extract sources
RUN unzip play-1.4.4.zip
RUN mv play-1.4.4 /opt/play/play-1.4.4
# Set execution to play binary
RUN chmod +x /opt/play/play-1.4.4/play
# Redefine play command
RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.4.4/play 1
RUN mkdir -p /app

ENV PLAY_HOME /opt/play/play-1.4.4

EXPOSE 9000

CMD ["help"]
ENTRYPOINT ["/opt/play/play-1.4.4/play"]
