Build du container
==================
```
docker build -t coaxys/oauth-io .
```

Utilisation du container
========================
```
docker run -d -e REDIS_PASSWORD=docker -link redis:redis -name oauth-io coaxys/oauth-io
```
