Utilisation du container
========================
```
# -v /var/docker/arangodb/solo:/var/lib/arangodb : utilise le répertoire /var/docker/arangodb/solo du serveur et le monte sur le répertoire /var/lib/arangodb du container
# -p 8529:8529 : force l'utilisation du port 49510 du serveur et le bind sur le port 8529 du container
# -d : background

ARANGO_ID=$(sudo docker run -v /var/docker/arangodb/solo:/var/lib/arangodb -p 8529:8529 -d arangodb/arangodb:2.8.0)

sudo docker ps
ID                  IMAGE                   COMMAND                CREATED              STATUS              PORTS
e7791cd53fb7        arangodb/arangodb      "/scripts/commands.sh"   3 weeks ago         Up 2 hours          0.0.0.0:8529->8529/tcp

sudo docker logs $ARANGO_ID

sudo docker stop $ARANGO_ID
```
