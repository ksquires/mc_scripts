DAY=`date +%d`
DATE=`date +%D`
DEST=/backups/Linux/cen7/`uname -n`
DATET=$(date "+%m.%d.%Y-%T"|sed "s/:/./g")

ls /backups > /dev/null 2>&1
#mount | grep -q \/backups || exit 1

if [[ ! -d $DEST ]]
then
	echo "$DEST does not exist"
	exit 1
fi

if [[ ! -d /tmp/backups ]]
then
	mkdir /tmp/backups
fi

if [[ -f /tmp/.lastbackup_mc ]]
then
	LASTBACK=`cat /tmp/.lastbackup_mc`
	date "+%D %T"  > /tmp/.lastbackup_mc
else
	echo "/tmp/.lastbackup_mc doesn't exist - aborting"
	exit 1
fi
FLAGS="--exclude-from=/home/ksquires/etc/backups.excl --after-date=$LASTBACK -zcvf"
#FLAGS="--exclude-from=/home/ksquires/etc/backups.excl --after-date=$LASTBACK -jcvf"

tar $FLAGS $DEST/backups_mc.$DATET.tgz /minecraft 2>/dev/null
#tar $FLAGS $DEST/backups_mc.$DATET.tbz /minecraft 2>/dev/null

tar -tzvf $DEST/backups_mc.$DATET.tgz > /tmp/backups/backups_mc.$DATET.out
#tar -tjvf $DEST/backups_mc.$DATET.tbz > /tmp/backups/backups_mc.$DATET.out

