#!/bin/bash

#	Scrivere uno script bash leggere.sh che legge le righe del file /usr/include/stdio.h
#	e stampa a video la sola terza parola di ciascuna riga, o niente se la terza parola
#	non esiste

while read PRIMA SECONDA TERZA RESTO; do
	echo "${TERZA}"
done </usr/include/stdio.h
