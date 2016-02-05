
echo "ran stop_ck.sh @ $(date)" > /tmp/stop_ck.sh 2>&1

/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6671 -p MR0klsks save-all
/home/ksquires/mcrcon/mcrcon -H 192.168.1.111 -P 6671 -p MR0klsks stop
