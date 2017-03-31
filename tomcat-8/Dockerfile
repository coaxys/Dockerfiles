FROM coaxys/oracle-jdk-8:1.8.0_91
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get update
RUN apt-get install -y pwgen

RUN wget http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.8/bin/apache-tomcat-8.0.8.tar.gz 
RUN tar -xzf apache-tomcat-8.0.8.tar.gz
RUN rm apache-tomcat-8.0.8.tar.gz
RUN mv apache-tomcat-8.0.8 /opt
ENV CATALINA_HOME /opt/apache-tomcat-8.0.8
ENV PATH $PATH:$CATALINA_HOME/bin

RUN rm -rf $CATALINA_HOME/webapps/examples
RUN rm -rf $CATALINA_HOME/webapps/docs

ADD ./tomcat-users.xml $CATALINA_HOME/conf/tomcat-users.xml
ADD ./run.sh /opt/run.sh
RUN chmod +x /opt/run.sh

RUN mkdir /deploy
VOLUME ["/deploy"]

EXPOSE 8080

ENTRYPOINT ["/opt/run.sh"]
