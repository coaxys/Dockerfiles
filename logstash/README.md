Build du container
==================
```
sudo docker build -t coaxys/logstash .
```

Utilisation du container avec un elasticsearch externe
======================================================
```
sudo docker run -d -e ES_HOST=1.2.3.4 -e ES_PORT=9300 coaxys/logstash
```

Utilisation du container avec un elasticsearch embeded
======================================================
```
sudo docker run -d coaxys/logstash
```

Ports ouverts
=============
514 (syslog)
9200 (embedded elasticsearch if no external specified)
9292 (logstash ui)
9300 (embedded elasticsearch if no external specified)
