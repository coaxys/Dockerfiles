Build du container
==================
```
docker build -t coaxys/tomcat-4:4.1.40 .
```

Utilisation du container
========================
```
# -v /var/docker/deploy:/deploy : utilise le répertoire /var/docker/deploy du serveur et le monte sur le répertoire /deploy du container
# -p 8081:8080 : force l'utilisation du port 8081 du serveur et le bind sur le port 8080 du container
# -d : background
TOMCAT4_ID=$(sudo docker run -v /var/docker/deploy:/deploy -p 8081:8080 -d coaxys/tomcat-4:4.1.40)

sudo docker ps
ID                  IMAGE                   COMMAND                CREATED              STATUS              PORTS
2f7683a397e5        coaxys/tomcat-4:4.1.40  /opt/run.sh /bin/sh    About a minute ago   Up About a minute   8081->8080

sudo docker logs $TOMCAT4_ID

sudo docker stop $TOMCAT4_ID
```
