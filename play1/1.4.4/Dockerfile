FROM coaxys/oracle-jdk-8:1.8.0_131

ENV PLAY_VERSION "1.4.4"
ENV PLAY_HOME /opt/play/play-${PLAY_VERSION}

LABEL maintainer.name="Nicolas Giard"
LABEL maintainer.email="nicolas.giard@coaxys.comt"
LABEL version=${PLAY_VERSION}
LABEL description="Play Framework v${PLAY_VERSION}"

# Create and move to play directory
# Play framework installation
RUN mkdir -p /opt/play && cd /opt/play && \
	# Download sources
	wget https://downloads.typesafe.com/play/${PLAY_VERSION}/play-${PLAY_VERSION}.zip && \
	# Extract sources
	unzip play-${PLAY_VERSION}.zip && \
	# Set execution to play binary
	chmod +x /opt/play/play-${PLAY_VERSION}/play && \
	# Redefine play command
	update-alternatives --install /usr/bin/play play /opt/play/play-${PLAY_VERSION}/play 1
# Create application folder
RUN mkdir -p /app

WORKDIR /app
EXPOSE 9000

ENTRYPOINT ["/opt/play/play-1.4.4/play"]
# Define command (entrypoint parameters)
#	- Start application located in /app directory
#	- Install dependencies on start
#	- Force port to 9000
CMD ["run", "/app", "--deps", "--http.port=9000"]