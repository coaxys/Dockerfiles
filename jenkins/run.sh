#!/bin/bash
mkdir -p /var/lib/jenkins
chown jenkins /var/lib/jenkins
exec su jenkins -c "java -jar /usr/share/jenkins/jenkins.war"