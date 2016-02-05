cd /minecraft/servers/forge|| exit 1

nohup java -Xmx2G -Xms2G -jar minecraft_server.jar  nogui > /dev/null 2>&1 &
echo $! > /var/tmp/minecraft-forge-server.pid
