Build du container
==================
```
sudo docker build -t coaxys/nginx .
```

Utilisation du container
========================
```
sudo docker run -d -v /var/docker/nginx/www:/www coaxys/nginx
```