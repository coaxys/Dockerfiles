FROM coaxys/oracle-jdk-7:1.7.0_55
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN curl http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update

# HACK: https://issues.jenkins-ci.org/browse/JENKINS-20407
RUN mkdir /var/run/jenkins

RUN apt-get install -y git jenkins=1.564
ADD run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh

VOLUME ["/var/lib/jenkins"]

EXPOSE 8080
CMD ["/usr/local/bin/run.sh"]
