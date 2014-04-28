Build du container
==================
```
docker build -t coaxys/oracle-jdk .
```

Utilisation du container
========================
Utilisable comme base pour d'autre container ayant besoin de java :
dans le Dockerfile
```
FROM coaxys/oracle-jdk:latest
...
```
