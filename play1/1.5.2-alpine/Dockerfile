FROM openjdk:12-alpine

ENV PLAY_VERSION "1.5.2"
ENV PLAY_HOME /opt/play/play-${PLAY_VERSION}

LABEL maintainer.name="Nicolas Giard"
LABEL maintainer.email="nicolas.giard@coaxys.com"
LABEL version=${PLAY_VERSION}
LABEL description="Play Framework v${PLAY_VERSION}"

# Play Framework installation
RUN apk add --no-cache --quiet curl python && \
	mkdir -p /opt/play && cd /opt/play && \
	# Download play framework
	curl --fail --silent --show-error --location --remote-name https://downloads.typesafe.com/play/${PLAY_VERSION}/play-${PLAY_VERSION}.zip && \
	# Extract and clean archive
	unzip -q play-${PLAY_VERSION}.zip && rm play-${PLAY_VERSION}.zip && \
	# Set execution
	chmod +x /opt/play/play-${PLAY_VERSION}/play

# Create application folder
RUN mkdir -p /app

WORKDIR /app

EXPOSE 9000

# Define entrypoint
ENTRYPOINT ["/opt/play/play-1.5.2/play"]

# Define command (entrypoint parameters)
#	- Start application located in /app directory
CMD ["help"]