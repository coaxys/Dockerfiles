Build du container
==================
```
sudo docker build -t coaxys/mysql .
```

Utilisation du container
========================
```
mkdir -p /var/docker/mysql/var/lib/mysql
mkdir -p /var/docker/mysql/var/log/mysql
mkdir -p /var/docker/mysql/var/run/mysqld
sudo docker run -d -v /var/docker/mysql/var:/var coaxys/mysql
```

Utilisation du container comme client de notre Container MySQL Server
=======================================================================
```
# On récupère l'adresse IP du container MySQL Server lancé plus tôt
IP_ADDRESS=$(sudo docker inspect $MYSQL_ID | grep IPAddress | cut -d '"' -f4)

# On surcharge l'entrypoint par défaut du container par la commande "mysql"
sudo docker run -i -entrypoint="mysql" -t coaxys/mysql -h $IP_ADDRESS -uroot -p
```