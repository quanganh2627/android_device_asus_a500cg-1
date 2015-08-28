#!/sbin/sh

# umount unneccessary partitions

umount -l /dev/block/by-name/factory		# /factory
umount -l /dev/block/by-name/config		# /config
umount -l /dev/block/by-name/misc		# /misc
umount -l /dev/block/by-name/logs

# bye bye annoying touch
rm /dev/input/event8

# kill su daemon
#ps | grep daemonsu | grep -v grep | awk '{print $1}' | xargs kill -9
