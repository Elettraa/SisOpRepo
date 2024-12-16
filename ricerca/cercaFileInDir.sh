#!/bin/bash

#	Scrivere uno script cerca.sh che prende come argomenti un percorso assoluto
#	di una directory da cui cominciare la ricerca di alcuni ed una stringa che
#	contiene un nome di file da cercare. Il nome potrebbe contenere dei
#	metacaratteri, ad esempio il nome di file da cercare potrebbe essere *std*-h
#	Lo script deve visualizzare a video il percorso assoluto di tutti i file il cui nome
#	corrisponde alla stringa passata come secondo argomento, partendo dalla directory
#	specificata come primo argomento, e includendo nella ricerca tutte le sottodirectory.

if (( $# != 2 )); then echo "Invalid number of arguments" ; exit 1; fi

DIR="$1"
FILE="$2" #può contenere metacaratteri
find "${1}" -name "${2}" -print


