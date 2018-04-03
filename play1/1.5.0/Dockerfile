FROM coaxys/oracle-jdk-10:10_46
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# Create and move to play directory
RUN mkdir -p /opt/play && cd /opt/play
# Download sources
RUN wget https://downloads.typesafe.com/play/1.5.0/play-1.5.0.zip
# Extract sources
RUN unzip play-1.5.0.zip
RUN mv play-1.5.0 /opt/play/play-1.5.0
# Set execution to play binary
RUN chmod +x /opt/play/play-1.5.0/play
# Redefine play command
RUN update-alternatives --install /usr/bin/play play /opt/play/play-1.5.0/play 1
RUN mkdir -p /app

ENV PLAY_HOME /opt/play/play-1.5.0

EXPOSE 9000

CMD ["help"]
ENTRYPOINT ["/opt/play/play-1.5.0/play"]
