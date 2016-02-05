cd /minecraft/servers/FairyCraft|| exit 1

#nohup java -d64 -Xmx2G -Xms2G -jar minecraft_server.jar  nogui > /dev/null 2>&1 &
nohup java -d64 -Xmx2G -Xincgc -jar minecraft_server.jar  nogui > /dev/null 2>&1 &
#nohup java -Xmx2048M -Xms2048M -XX:+UseFastAccessorMethods -XX:+AggressiveOpts -XX:+DisableExplicitGC -XX:+UseAdaptiveGCBoundary -XX:MaxGCPauseMillis=500 -XX:SurvivorRatio=16 -XX:+UseParallelGC -XX:UseSSE=3 -XX:ParallelGCThreads=4 -jar minecraft_server.$1.jar  nogui &
echo $! > /var/tmp/minecraft-fc-server.pid
#nohup java -Xms2G -Xms2G -jar forge-1.8-11.14.3.1450-universal.jar  nogui &
