#!/system/bin/sh

# Author: waydownsouth
# - Workaround for downloading long term orbit data (lto.dat)
#   for Broadcom aGPS chips such as BCM4750
# - adapted from the aries CyanogenMod device (gb branch)
# - triggered by init when init.svc.wpa_supplicant=running

# Broken wget dns? try IP 216.34.140.138

lto_dat_file=/data/gps/lto.dat
lto_dat_url=http://gllto.glpals.com/7day/latest/lto.dat
max_age_days=5
net_retry_count=100
net_retry_delay=20

if [ ! -e $lto_dat_file -o ! -z "$(find $lto_dat_file -mtime +$max_age_days)" ]; then
  echo "LTO data not found or > $max_age_days days old - attempting update"
  for i in $(seq $net_retry_count); do
    echo "checking connectivity"
    if [ $(cat /proc/net/route | wc -l) -le 1 ]; then
      echo "no network - waiting for route"
      sleep $net_retry_delay
    else
      wget -O $lto_dat_file $lto_dat_url
      [ $? -ne 0 ] && break
      chmod 664 $lto_dat_file
      echo "LTO data successfully updated"
      exit 0
    fi
  done
  echo "LTO data update failed"
  exit 1
fi
echo "LTO data < $max_age_days days old - skipping update"

