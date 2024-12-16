#!/bin/bash

#	Realizzare uno script bash che emette sullo standard output alcune righe. In ciascuna riga
#	compare un motivo della caduta e il numero delle volte che quella motivo è accaduto.
#	Potrebbe essere utile usare qualche file temporaneo in cui salvare informazioni parziali.
#	Per evitare ripetizioni di righe in output si può usare un comando uniq che permette di
#	eliminare le righe ripetute di un file. Usare il man per capire come funziona.
# Vedi file: cadutevic.txt

while read ANNO LUOGO CAUSA DANNI; do
	echo "${CAUSA}"
done <cadutevic.txt | sort | uniq -c
