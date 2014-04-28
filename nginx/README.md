Build du container
==================
```
sudo docker build -t coaxys/nginx .
```

Utilisation du container
========================
```
sudo docker run -d -p 80:80 -v /path/to/www:/www -v /path/to/sites-enabled:/etc/nginx/sites-enabled -v /path/to/logs:/var/log/nginx coaxys/nginx nginx
```