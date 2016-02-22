#!/bin/bash

cd /minecraft/servers/HiddenValley || exit 1


nohup java -server -d64 -XX:ParallelGCThreads=4 -Xmx1024M -Xincgc -jar minecraft_server.jar  nogui > /dev/null 2>&1 &
echo $! > /var/tmp/minecraft-hv-server.pid
