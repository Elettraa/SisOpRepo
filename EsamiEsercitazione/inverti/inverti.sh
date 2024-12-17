#!/bin/bash


read LINE
if (( $? == 0 )); then
./inverti.sh
	echo "$LINE"
	fi
