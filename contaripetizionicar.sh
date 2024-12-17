#!/bin/bash

if (( $# != 1 )); then echo "Invalid number of arguments"; fi

for (( CAR=0; ${CAR}<${#1}; CAR=${CAR}+1 )); do
	echo "${1:${CAR}:1}"
done | sort | uniq -c | while read OCC CAR; do echo "${CAR} ${OCC}"; done
