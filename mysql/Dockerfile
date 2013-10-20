FROM ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade

# Keep upstart from complaining
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

RUN apt-get -y install mysql-server

run sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD ./set-access-rights.sh /tmp/set-access-rights.sh
RUN /bin/sh /tmp/set-access-rights.sh

EXPOSE 3306

ENTRYPOINT ["/usr/sbin/mysqld"]