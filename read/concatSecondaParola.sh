#!/bin/bash

#	Scrivere uno script che prende come unico argomento il nome
#	di quel file. Dentro lo script utilizzare ripetutamente il comando read per leggere la
#	seconda parola di ogni riga del file. Tutte le seconde parole devono essere
#	concatenata in una variabile di nome OUT. Alla fine dello script, la variabile OUT
#	deve essere visualizzata sullo standard output.

if (( $# != 1 )); then echo "Invalid number of args"; exit 1; fi
if [[ ! -r $1 ]]; then echo "File does not exist"; exit 1; fi #Controllo per capire se il file esiste
CONCAT=""
while read PRIMA SECONDA ILRESTO; do
	CONCAT="${CONCAT} ${SECONDA}"
done < $1
echo "${CONCAT}"
