Build du container
==================
```
docker build -t coaxys/elasticsearch .
```

Utilisation du container
========================
```
docker run -d -v /path/to/data:/data -name elasticsearch coaxys/elasticsearch
```
Le volume local peut contenir les répertoires suivants :
- data
- logs
- plugins
- work

Il est donc possible de placer les plugins souhaités (comme le plugin head) dans le répertoire plugins et ils seront automatiquement utilisés par elasticsearch

