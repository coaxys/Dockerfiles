Build du container
==================
```
sudo docker build -t coaxys/play1-jdk11:1.5.1 .
```

Utilisation du container
========================
```
sudo docker run -it --rm coaxys/play1-jdk11:1.5.1

```

```
# -v /var/docker/app:/app : utilise le répertoire /var/docker/app du serveur et le monte sur le répertoire /app du container
# -p 9000:9000 : force l'utilisation du port 9000 du serveur et le bind sur le port 9000 du container
# -d : background
PLAY_ID=$(sudo docker run -v /var/docker/app:/app -p 9000:9000 -d coaxys/play1-jdk11:1.5.1 run /app --%prod)

sudo docker ps
ID                  IMAGE                   COMMAND                CREATED              STATUS              PORTS
2f7683a397e5        coaxys/play1-jdk11:1.5.1  /opt/play/play         About a minute ago   Up About a minute   9000->9000

sudo docker logs $PLAY_ID

sudo docker stop $PLAY_ID
```
