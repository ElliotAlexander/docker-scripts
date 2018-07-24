#!/bin/bash

echo "Killing all running docker containers..."
docker kill $(docker ps -q)
