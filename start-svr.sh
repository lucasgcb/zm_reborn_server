#!/bin/bash

sudo ./install-docker-ubuntu.sh
./install-zm.sh $1
sudo ufw allow 27015
sudo docker-compose up -d
