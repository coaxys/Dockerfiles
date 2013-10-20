#! /bin/sh

IP_ADDRESS=$(sudo docker inspect $1 | grep IPAddress | cut -d '"' -f4)
echo $IP_ADDRESS

