#!/bin/bash

#	Scrivere uno script random.sh che controlla ripetutamente il valore della variabile
#	RANDOM e conta quante volte la variabile viene letta. Lo script si interrompe
#	quando la variabile RANDOM assume un valore tale che la divisione modulo 10 di
#	RANDOM valga esattamente 2. Prima di terminare, lo script scrive in output il
#	numero di volte che la variabile e’ stata controllata.
COUNT=1
while ((1)); do
	RAND=${RANDOM}
	echo ${RAND}
	if (( ${RAND}%10 == 2 )); then
	break; fi
	COUNT=$(( ${COUNT}+1 ))
done
echo $COUNT
echo -e "\n"

#oppure:

NUM=0
while (( ${RANDOM}%10 != 2 )) ; do
(( NUM=${NUM}+1 ))
done
echo "NUM=${NUM}"
