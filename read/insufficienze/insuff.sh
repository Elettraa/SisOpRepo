#!/bin/bash

#	Scrivere uno script bash insuff2.sh che metta in output l'elenco dei soli studenti che
#	rispettano TUTTE le seguenti caratteristiche:
#		--- Hanno sostenuto la seconda prova prativa, ottenendo un voto NON sufficiente,
#		--- Non hanno sostenuto la prima prova pratica.

while read NOME COGNOME MATRICOLA VOTO; do
if (( ${VOTO} < "18" )); then
	if [[ ! `grep "${MATRICOLA}" RisultatiProvaPratica1.txt` ]]; then
			echo "${MATRICOLA} ${NOME} ${COGNOME} ${VOTI}"
		fi
	fi
done <RisultatiProvaPratica2.txt | sort -k 3
