#!/bin/bash

if [ "$EUID" != 0 ]
  then echo "Run me as root!"
  exit
fi

read -p "You're about to force remove all docker containers. Are you sure? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	docker rm $(docker ps -a -q)
	echo "Complete."
fi
