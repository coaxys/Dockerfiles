Build du container
==================
```
sudo docker build -t coaxys/jenkins .
```

Utilisation du container
========================
```
# -d : background
# -v /var/docker/jenkins:/var/lib/jenkins : utilise le répertoire /var/docker/jenkins du serveur et le monte sur le répertoire /var/lib/jenkins du container
# -p 8080:8080 : force l'utilisation du port 8080 du serveur et le bind sur le port 8080 du container
JENKINS_ID=$(sudo docker run -d -v /var/docker/jenkins:/var/lib/jenkins -p 8080:8080 coaxys/jenkins)

sudo docker ps
ID                  IMAGE                   COMMAND                CREATED              STATUS              PORTS
2f7683a397e5        coaxys/jenkins:latest  /usr/local/bin/run.sh About a minute ago   Up About a minute   8080->8080

sudo docker logs $JENKINS_ID

sudo docker stop $JENKINS_ID
```