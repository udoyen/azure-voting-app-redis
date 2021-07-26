#!/bin/bash

set -e

apt-get update
echo " "
echo "Installing requirements ..."
echo " " 
pip3 install -r /home/udacityadmin/azure-voting-app-redis/requirements.txt
echo " "
echo "Finished installing requirements"
echo " "
echo "Updating ownership of the flask app folder ..."
echo " "
sudo chown -R udacityadmin:udacityadmin /home/udacityadmin/azure-voting-app-redis
echo " "
echo "Finished folder ownership update"
echo " "
echo "Starting flask app ..."
python3 /home/udacityadmin/azure-voting-app-redis/azure-vote/main.py || echo "Flask start failed!"
echo " "
