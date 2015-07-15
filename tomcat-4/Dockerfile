FROM coaxys/j2sdk:1.4.2_19
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get -y install pwgen
RUN wget http://archive.apache.org/dist/tomcat/tomcat-4/v4.1.40/bin/apache-tomcat-4.1.40.tar.gz
RUN tar -xzf apache-tomcat-4.1.40.tar.gz
RUN rm apache-tomcat-4.1.40.tar.gz
RUN mv apache-tomcat-4.1.40 /opt

ENV CATALINA_HOME /opt/apache-tomcat-4.1.40
ENV PATH $PATH:$CATALINA_HOME/bin

ADD ./tomcat-users.xml $CATALINA_HOME/conf/tomcat-users.xml
ADD ./run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

RUN mkdir /deploy
VOLUME ["/deploy"]

EXPOSE 8080

ENTRYPOINT ["/opt/run.sh"]
