Build du container
==================
```
sudo docker build -t coaxys/oracle-jdk-8 .
```

Utilisation du container
========================
```
sudo docker run -it --rm coaxys/oracle-jdk-8 java -version
```

Utilisable comme base pour d'autre container ayant besoin de java :
dans le Dockerfile
```
FROM coaxys/oracle-jdk-8:latest
...
```
