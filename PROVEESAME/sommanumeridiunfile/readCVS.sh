#!/bin/bash

#	Scrivere uno script che prende come argomenti un percorso di un file .csv e un indice, e che stampa
#	in output tutti i campi della indice-esima colonna di quel file CSV.

if (( $# != 2 )); then echo "Invalid args" ; exit 1 ; fi

cut -d "," -f "$2" "$1"
