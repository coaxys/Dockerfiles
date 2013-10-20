Build du container
==================
```
sudo docker build -t coaxys/nginx-php5 .
```

Utilisation du container
========================
```
sudo docker run -d -v /var/docker/nginx/www:/var/www coaxys/nginx-php5
```