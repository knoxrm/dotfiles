#!/usr/bin/env bash

count=0
disconnected="睊"
disconnected2="睊"
wireless_connected="直"
ethernet_connected="囹"

ID="$(ip link | awk '/state UP/ {print $2}')"
ESSID="$(iwgetid | cut -d "\"" -f2)"

while true; do
	if (ping -c 1 www.google.com || ping -c 1 www.archlinux.org) &>/dev/null; then
		if [[ $ID == e* ]]; then 
			echo "$ethernet_connected    $ESSID"; sleep 25
		else 
			echo "$wireless_connected    $ESSID"; sleep 25

		fi
	else 
		echo "$disconnected"; sleep 0.5
	fi
done

