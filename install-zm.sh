#!/bin/bash
curl "{$1}" -L  --output zm.tz.gz
tar -zxvf zm.tz.gz

echo "hostname \"King Kong vs Xotazilla\" " >> zombie_master_reborn/cfg/server.cfg
echo "rcon_password \"pinto\" " >>  zombie_master_reborn/cfg/server.cfg
echo "sv_downloadurl \"http://46.4.98.131/fastdl/zombie_master/maps/"  >> zombie_master_reborn/cfg/server.cfg
echo "sv_allowdownload 1" >>  zombie_master_reborn/cfg/server.cfg
echo "sv_allowupload 1"  >>  zombie_master_reborn/cfg/server.cfg

rm -r zombie_master_reborn/custom/
git clone https://github.com/zm-reborn/zmr-map-configs
cp -r zmr-map-configs/custom zombie_master_reborn/



