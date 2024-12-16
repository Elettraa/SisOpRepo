#!/bin/bash

#	Scrivere uno script elenco.sh che elenca tutti i file e directory presenti nella
#	directory corrente (escludendo dall'elenco la directory corrente, la directory
#	superiore e i files nascosti). Per ciascuno di questi file e directory, lo script controlla
#	se si tratta di una directory o no. Se si tratta di una directory lo script conta la
#	lunghezza del nome della directory e lo accumula in una variabile locale
#	LungNomiDirectory. Lo script, inoltre conta i file che non sono delle directory. Al
#	termine lo script visualizza in output il numero di file di tipo non directory e la
#	lunghezza accumulata dei nomi delle directory lette.

LungNomiDirectory=0
NumFiles=0
for i in `ls ./`; do
	if [[ -d ${i} ]]; then
		LungNomiDirectory=$(( ${LungNomiDirectory}+${#i} ))
	elif [[ -f ${i} ]]; then
		NumFiles=$(( ${NumFiles}+1 ))
fi
done
echo "Lunghezza di tutti i nomi delle directory : ${LungNomiDirectory}"
echo "Numero di files : ${NumFiles}"
