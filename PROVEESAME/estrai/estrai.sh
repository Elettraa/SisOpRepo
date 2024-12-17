#!/bin/bash

#	Realizzare uno script estrai.sh che stampa a video le righe lette dal file input1.txt ma
#	senza i numeri in mezzo a ciascuna riga e senza la virgola che segue il numero.
#	Infine, stampa a video la somma dei numeri che non ha visualizzato.
#	Qui sotto ecco cosa deve apparire a video usando il file input1.txt di esempio.

#soluzione con cambio di IFS:

OLDIFS="${IFS}"
IFS=","
COUNT=0
while read PRIMA SECONDA TERZA; do
	echo "${PRIMA},${TERZA}"
	COUNT=$(( ${COUNT}+${SECONDA} ))
done <input.txt
echo ${COUNT}
IFS="${OLDIFS}"


echo -e "\noppure\n"

cut -d "," -f 1,3 input.txt
COUNT=0
for NUM in `cut -d "," -f 2 input.txt`; do COUNT=$(( ${COUNT}+${NUM} )); done
echo ${COUNT}
