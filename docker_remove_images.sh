#!/bin/bash

if [ "$EUID" != 0 ]
  then echo "Run me as root!"
  exit
fi

read -p "You're about to force delete all docker images. Are you sure? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	docker rmi -f  $(docker images -a -q)
	echo "Complete."
fi
