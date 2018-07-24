#!/bin/bash

if [ "$EUID" != 0 ]
  then echo "Run me as root!"
  exit
fi


docker rm $(docker ps -a -q)
echo "Complete."
echo "Use docker -a - q to view stopped containers."

