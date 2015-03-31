Build du container
==================
```
sudo docker build -t coaxys/elasticsearch:1.5.0 .
```

Utilisation du container
========================
```
sudo docker run -v /path/to/data:/data -d coaxys/elasticsearch:1.5.0
```
Le volume local peut contenir les répertoires suivants :
- data
- logs
- plugins
- work

Il est donc possible de placer les plugins souhaités (comme le plugin head) dans le répertoire plugins et ils seront automatiquement utilisés par elasticsearch
