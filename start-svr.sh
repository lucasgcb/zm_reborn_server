#!/bin/bash
sudo docker run -v /home/steam/steamcmd/zm_server_reborn/:./zm_server_reborn/ --network host -d $(sudo docker build --tag zombie -q .)
