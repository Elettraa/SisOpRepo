#!/bin/bash

#	Scrivere uno script bash argomenti.sh che prende in input un numero qualsiasi di
#	argomenti e stampa a video una stringa formata dalla concatenazione degli
#	argomenti di indice pari seguiti dagli argomenti di indice dispari.

PARI=""
DISPARI=""
COUNT=1
for NAME in "$@"; do 
	if (( ${COUNT}%2 == 0 )); then
		PARI="${PARI} ${NAME}"
	elif (( ${COUNT}%2 != 0 )); then
		DISPARI="${DISPARI} ${NAME}"
	fi

COUNT=$(( ${COUNT}+1 ))
done
echo ${PARI}
echo ${DISPARI}
