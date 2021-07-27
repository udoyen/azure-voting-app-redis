#!/bin/bash

set -e

sudo apt-get update

echo "Installing requirements ..."
 
sudo -H pip3 install -r /home/udacityadmin/azure-voting-app-redis/requirements.txt

echo "Finished installing requirements"

echo "Updating ownership of the flask app folder ..."

sudo chown -R udacityadmin:udacityadmin /home/udacityadmin/azure-voting-app-redis

echo "Finished folder ownership update"

echo "Starting flask app ..."

python3 /home/udacityadmin/azure-voting-app-redis/azure-vote/main.py && echo "Flask app started" || echo "Flask app start failed!"


