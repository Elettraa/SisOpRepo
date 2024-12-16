#!/bin/bash

#	Scrivere uno script cercafile.sh che, per ciascuna lettera che sta tra c e g cerca i
#	file (o directory) che stanno nella directory /usr/include (non nelle sottodirectory) e
#	che hanno quella lettera come secondo carattere del nome del file, e che verificano
#	una delle due seguenti proprietà: la lunghezza del percorso assoluto del file è
#	minore di 18 OPPURE è maggiore di 23. Di questi file stampa in output il percorso
#	assoluto.


for ELEM in /usr/include/?{c..g}*; do 
	if [[ (${#ELEM} -lt 18 || ${#ELEM} -gt 23) && -e ${ELEM} ]]; then
	echo ${ELEM}
fi
done
