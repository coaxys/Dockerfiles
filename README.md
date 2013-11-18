docker.io
==========

extrait de la documentation officielle : http://docs.docker.io/en/latest/installation/ubuntulinux/

Installation de Docker sur un Ubuntu Precise 12.04 LTS 64-bit
=============================================================
```
# install the backported kernel
sudo apt-get update
sudo apt-get install linux-image-generic-lts-raring linux-headers-generic-lts-raring

# reboot
sudo reboot
```

```
# Add the Docker repository key to your local keychain
# using apt-key finger you can check the fingerprint matches 36A1 D786 9245 C895 0F96 6E92 D857 6A8B A88D 21E9
sudo sh -c "wget -qO- https://get.docker.io/gpg | apt-key add -"

# Add the Docker repository to your apt sources list.
sudo sh -c "echo deb http://get.docker.io/ubuntu docker main\
> /etc/apt/sources.list.d/docker.list"

# Update your sources
sudo apt-get update

# Install, you will see another warning that the package cannot be authenticated. Confirm install.
sudo apt-get install lxc-docker
```
Vérifier que tout fonctionne correctement :
```
# download the base 'ubuntu' container and run bash inside it while setting up an interactive shell
sudo docker run -i -t ubuntu /bin/bash

# type 'exit' to exit
```


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


Utilitaires
===========

(json cli parser : http://stedolan.github.io/jq/download/)
wget http://stedolan.github.io/jq/download/linux64/jq
chmod +x ./jq
sudo cp jq /usr/bin

alias did='docker ps -l -q'
alias dip='docker inspect `did` | jq -r ".[0].NetworkSettings.IPAddress"'

docker rm $(docker ps -a -q)