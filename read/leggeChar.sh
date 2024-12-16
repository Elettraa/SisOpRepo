#!/bin/bash

#	Scrivere uno script bash leggerecaratteri.sh che legge uno per uno i caratteri del
#	file /usr/include/stdio.h e stampa a video il numero dei caratteri letti dal file

COUNTER=0
while read -n 1 -r CHAR; do
	COUNTER=$(( ${COUNTER}+1 ))
done </usr/include/stdio.h

RIS=$(( ${COUNTER}-$(cat /usr/include/stdio.h | wc -c) ))
echo $RIS

#l'opzione -r nel read evita gli escape char
