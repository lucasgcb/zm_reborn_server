FROM cm2network/steamcmd
RUN mkdir /home/steam/zm_reborn_server/
RUN /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/zm_reborn_server/ \
    +app_update 244310 +quit

COPY svr-entrypoint.sh /home/steam/zm_reborn_server/
RUN ln -s /home/steam/zm_reborn_server/bin/soundemittersystem_srv.so  /home/steam/zm_reborn_server/bin/soundemittersystem.so
RUN ln -s /home/steam/zm_reborn_server/bin/scenefilecache_srv.so  /home/steam/zm_reborn_server/bin/scenefilecache.so
WORKDIR /home/steam/zm_reborn_server
