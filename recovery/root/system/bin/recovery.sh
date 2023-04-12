#!/system/bin/sh

### Recovery service bootstrap for better Treble support
# Purpose:
#  - Prevent recovery from being restarted when it's killed (equivalent to a one-shot service)
#  - symlink to the correct fstab depending on Treble partition state
chmod -R 777 /tissot_manager/*

source /tissot_manager/constants.sh
source /tissot_manager/tools.sh

# check mount situation and use appropriate fstab
rm /etc/twrp.fstab
rm /etc/recovery.fstab
rm /etc/recovery.wipe
if [ -b "$vendor_a_blockdev" -a -b "$vendor_b_blockdev" ]; then
	ln -sn /etc/twrp.fstab.treble /etc/twrp.fstab
        ln -sn /etc/recovery.fstab.treble  /etc/recovery.fstab
        ln -sn /etc/recovery.wipe.treble  /etc/recovery.wipe
else
	ln -sn /etc/twrp.fstab.stock /etc/twrp.fstab
        ln -sn /etc/recovery.fstab.stock  /etc/recovery.fstab
        ln -sn /etc/recovery.wipe.stock  /etc/recovery.wipe
fi;

# Needed for boot control HAL to update GPT partition info
ln -s /dev/block/mmcblk0 /dev/mmcblk0

# start recovery
/system/bin/recovery &

# idle around
while kill -0 `pidof recovery`; do sleep 1; done

# stop self
stop recovery