FROM coaxys/play1:1.4.2
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

RUN wget https://www.arangodb.com/repositories/arangodb2/xUbuntu_14.04/Release.key
RUN apt-key add - < Release.key

RUN apt-get install apt-transport-https
RUN echo 'deb https://www.arangodb.com/repositories/arangodb2/xUbuntu_14.04/ /' | sudo tee /etc/apt/sources.list.d/arangodb.list
RUN apt-get update

# Install MongoDB Client
RUN apt-get install -y mongodb-org-shell=3.0.12 mongodb-org-tools=3.0.12

# Install ArangoDB Client
RUN apt-get install -y arangodb-client=2.8.7

EXPOSE 9000

ADD wait.sh /usr/bin/wait.sh

ENTRYPOINT ["/usr/bin/wait.sh"]
