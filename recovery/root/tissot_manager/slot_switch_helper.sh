#!/system/bin/sh
# 

if [ -b "/dev/block/bootdevice/by-name/userdata_$1" ]; then
	if [ "$2" != "real" ]; then
		umount -f /system
		umount -f /vendor
		$0 $1 "real" &
		exit
	fi

	while true; do
		userdata_link=`readlink /dev/block/bootdevice/by-name/userdata`
		slot_suffix=`echo -n $userdata_link | tail -c 1`
		if [ "$slot_suffix" = "$1" ]; then
			break
		fi
		sleep 0.1
	done
	
	mount /dev/block/bootdevice/by-name/userdata_$1 /data
	if [ ! -d /data/media ]; then
		mkdir /data/media
		chmod 0770 /data/media
	fi
fi
