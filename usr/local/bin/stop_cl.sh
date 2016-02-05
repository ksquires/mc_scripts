
echo "ran stop_cl.sh @ $(date)" > /tmp/stop_cl.sh 2>&1

/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6667 -p MR0klsks save-all
/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6667 -p MR0klsks stop
