Build du container
==================
```
sudo docker build -t coaxys/rethinkdb .
```

Utilisation du container
========================
```
sudo docker run -d -p 49160:8080 coaxys/rethinkdb
```
