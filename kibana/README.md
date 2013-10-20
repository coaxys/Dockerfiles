Build du container
==================
```
sudo docker build -t coaxys/kibana .
```

Utilisation du container
========================
```
sudo docker run -e ES_HOST=1.2.3.4 -e ES_PORT=9200 coaxys/kibana
```

Ports ouverts
=============
80 (kibana)