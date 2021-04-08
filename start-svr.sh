#!/bin/bash

sudo ./install-docker-ubuntu.sh
./install-zm.sh $1
sudo docker-compose up -d
