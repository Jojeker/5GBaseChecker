#!/bin/bash

#echo "USENIX24" | sudo -S ./kill_gnb.sh 

if [ "$EUID" -ne 0 ]
	then echo "Need to run as root"
	exit
fi

source_dir=`pwd`

echo "Killing OAI gNB"

pkill -9 -f nr-softmodem
# ps -ef | grep srsenb | grep -v grep | awk '{print $2}' | xargs sudo kill -9

# Path is different..
#/usr/lib/uhd/utils/b2xx_fx3_utils --reset-device

#for i in /sys/bus/pci/drivers/xhci_hcd/*:*; do
#
#  [ -e "$i" ] || continue
#
#  echo "${i##*/}" > "${i%/*}/unbind"
#
#  echo "${i##*/}" > "${i%/*}/bind"
#
#done


echo "Killed OAI gNB"


