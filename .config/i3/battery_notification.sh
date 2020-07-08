#!/bin/bash

BATTINFO='acpi'
if [[ 'echo $BATTINFO | grep Discharging' && 'acpi | cut -f 2 -d "," |tr -d ' ' | tr -d "%"' < 15]]	
; then
	notify-send "Low Battery " "$BATTINFO" -u critical
fi 
