FROM coaxys/ubuntu:latest
MAINTAINER Nicolas Giard, nicolas.giard@coaxys.com

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server pwgen

# Remove pre-installed database
RUN rm -rf /var/lib/mysql/*

RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf

ADD create_mysql_admin_user.sh /opt/create_mysql_admin_user.sh
ADD run.sh /opt/run.sh
RUN chmod 755 /opt/*.sh

VOLUME  ["/etc/mysql", "/var/lib/mysql"]

EXPOSE 3306

ENTRYPOINT ["/opt/run.sh"]
