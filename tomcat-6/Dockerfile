FROM coaxys/oracle-jdk-7:1.7.0_55
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get update
RUN apt-get install -y pwgen

RUN wget http://mir2.ovh.net/ftp.apache.org/dist/tomcat/tomcat-6/v6.0.39/bin/apache-tomcat-6.0.39.tar.gz
RUN tar -xzf apache-tomcat-6.0.39.tar.gz
RUN rm apache-tomcat-6.0.39.tar.gz
RUN mv apache-tomcat-6.0.39 /opt
ENV CATALINA_HOME /opt/apache-tomcat-6.0.39
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
