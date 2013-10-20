doker.io
==========

Installation de Docker sur un Ubuntu 13.04 64 bits
==================================================
```
sudo apt-get update && sudo apt-get install linux-image-extra-`uname -r`

# Add the Docker repository key to your local keychain
sudo sh -c "curl https://get.docker.io/gpg | apt-key add -"

# Add the Docker repository to your apt sources list.
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

# update & install
sudo apt-get update && sudo apt-get install lxc-docker
```

Vérifier que tout fonctionne correctement :
```
# download the base 'ubuntu' container
# and run bash inside it while setting up an interactive shell
sudo docker run -i -t ubuntu /bin/bash

# type exit to exit
```