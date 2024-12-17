#!/bin/bash

#	Scrivi uno script che legge un file contenente numeri interi (uno per riga) e stampa a video due
#	somme, cioè la somma dei numeri nelle righe di indice pari e la somma dei numeri nelle righe di
#	indice dispari.

COUNT=0
SUMP=0
SUMD=0
while read NUM; do	
	if (( ${COUNT}%2==0 )); then 
SUMP=$(( ${SUMP}+${NUM} ))
else
SUMD=$(( ${SUMD}+${NUM} ))
fi
COUNT=$(( ${COUNT}+1 ))
done <filenum.txt
echo -e "Righe pari ${SUMP}\nRighe dispari ${SUMD}"
