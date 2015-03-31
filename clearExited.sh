#! /bin/sh

sudo docker ps -a | grep 'Exited (' | awk '{print $1}' | sudo xargs --no-run-if-empty docker rm

