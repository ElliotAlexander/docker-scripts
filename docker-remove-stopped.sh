#!/bin/bash
docker rm $(docker ps -a -q)
echo "Complete."
echo "Use docker -a - q to view stopped containers."

