#!/bin/bash

cd /minecraft/servers/FairyCraft|| exit 1

nohup java -server -d64 -Xmx2048M -Xincgc -jar minecraft_server.jar  nogui > /dev/null 2>&1 &
echo $! > /var/tmp/minecraft-fc-server.pid