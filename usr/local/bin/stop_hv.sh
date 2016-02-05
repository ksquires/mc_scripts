
echo "ran stop_hv.sh @ $(date)" > /tmp/stop_hv.sh 2>&1

/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6669 -p MR0klsks save-all
/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6669 -p MR0klsks stop
