
echo "ran stop_kent.sh @ $(date)" > /tmp/stop_kent.sh 2>&1

/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6666 -p MR0klsks save-all
/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6666 -p MR0klsks stop
