Build du container
==================
```
docker build -t coaxys/redis-2.6 .
```

Utilisation du container
========================
```
docker run -d -e PASSWORD=docker -name redis coaxys/redis-2.6 --requirepass docker
```
