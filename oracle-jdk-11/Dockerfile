FROM coaxys/ubuntu:16.04

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

RUN mkdir -p /usr/lib/jvm/java-11-oracle
COPY jdk-11.0.1_linux-x64_bin.tar.gz /usr/lib/jvm/java-11-oracle
RUN tar -xzf /usr/lib/jvm/java-11-oracle/jdk-11.0.1_linux-x64_bin.tar.gz -C /usr/lib/jvm/java-11-oracle

RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-11-oracle/jdk-11.0.1/bin/java 1

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-11-oracle/jdk-11.0.1
