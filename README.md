# zm_reborn_server
Dockerfile for deploying Ubuntu based Zombie Master Reborn servers.

1. Get a ZM:R Linux download link (Right-clicking one of the options from moddb [here](https://www.moddb.com/downloads/start/184512/all), for instance)
2. Install docker, docker compose, and the game by running 
```bash
./start-svr.sh http://download-link/whatever
```
 Alternatively,
 
```
./install-zm.sh http://download-link/whatever
sudo uwf allow 27015
sudo docker-compose up
```

3. The server should be running on port 27015.
