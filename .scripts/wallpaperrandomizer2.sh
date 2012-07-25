#!/bin/bash

DIR=/home/wisp/Wallpapers
FLOOR=1
WPS=($DIR/*.jpg $DIR/*.png)
WPCOUNT=${#WPS[@]}

while [ 1 -eq 1 ]; do
	
	feh --bg-fill `echo ${WPS[(($RANDOM % $WPCOUNT))]}`
	sleep 2m
done
