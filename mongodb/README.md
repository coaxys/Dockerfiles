Build du container
==================
```
sudo docker build -t coaxys/mongodb .
```

Utilisation du container
========================
```
# -v /var/docker/data:/data : utilise le répertoire /var/docker/data du serveur et le monte sur le répertoire /data du container
# -p 49150:27017 : force l'utilisation du port 49510 du serveur et le bind sur le port 27017 du container
# -d : background
MONGO_ID=$(sudo docker run -v /var/docker/data:/data -p 49150:27017 -d coaxys/mongodb --noprealloc --smallfiles)

sudo docker ps
ID                  IMAGE                   COMMAND                CREATED              STATUS              PORTS
e7791cd53fb7        coaxys/mongodb:latest   usr/bin/mongod --nop   About a minute ago   Up About a minute   49150->27017

sudo docker logs $MONGO_ID

sudo docker stop $MONGO_ID
```

Utilisation du container comme client de notre Container MongoDB Server
=======================================================================
```
# On récupère l'adresse IP du container MongoDB Server lancé plus tôt
IP_ADDRESS=$(sudo docker inspect $MONGO_ID | grep IPAddress | cut -d '"' -f4)

# On surcharge l'entrypoint par défaut du container par la commande "mongo"
sudo docker run -i -t -entrypoint "mongo" coaxys/mongodb $IP_ADDRESS
```
