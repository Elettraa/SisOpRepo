#!/bin/bash

#	Scrivi uno script che copia tutti i file con estensione .txt da una directory di origine a una directory di
#	destinazione, entrambe specificate mediante un argomento a riga di comando. Lo script deve
#	ignorare i file vuoti.

if (( $# != 2 )); then echo "Invalid arguments" ; exit 1 ; fi

for FILE in $(find "$1" -name "*.txt"); do
	if [[ $(cat "${FILE}") != "" ]]; then
	cp -r "${FILE}" "$2"
fi
done

