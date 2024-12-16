#!/bin/bash
A=0
while read RIGA; do
	if (( ${A} == 0 )); then
		echo "${RIGA}"
		A=1
	elif (( ${A} == 1 )); then
 		A=0; fi
done
