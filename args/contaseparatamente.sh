#!/bin/bash

if (( $# <= 0 || $# > 9 )); then echo "Invalid number of arguments"; exit 0; fi

for (( NUM=1; ${NUM}<=$#; NUM=${NUM}+1 )); do
	if (( ${NUM}%2 == 0 )); then
	echo ${!NUM}
	elif (( ${NUM}%2 != 0)); then
	echo ${!NUM} 1>&2
fi
done
