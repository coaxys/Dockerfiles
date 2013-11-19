Build du container
==================
```
docker build -t coaxys/redis .
```

Utilisation du container
========================
```
docker run -d -e PASSWORD=docker -v /path/to/data:/data -name redis coaxys/redis --requirepass docker
```

Utilisation du container comme client de notre Container Redis Server
=======================================================================
```
# On récupère l'adresse IP du container Redis Server lancé plus tôt
IP_ADDRESS=$(docker inspect $REDIS_ID | grep IPAddress | cut -d '"' -f4)

# On surcharge l'entrypoint par défaut du container par la commande "/redis/src/redis-cli"
docker run -i -t -entrypoint "/redis/src/redis-cli" coaxys/redis -h $IP_ADDRESS -a docker
```
