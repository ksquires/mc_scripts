
echo "ran stop_fc.sh @ $(date)" > /tmp/stop_fc.sh 2>&1

/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6668 -p MR0klsks\) save-all
/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6668 -p MR0klsks\) stop
