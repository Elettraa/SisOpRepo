#!/bin/bash

#	Scrivere uno script separa.sh che
#		- separa i diversi percorsi contenuti nella variabile di ambiente PATH (che vi
#		  ricordo sono separati da : ).
#		- e li visualizza uno per uno sullo standard output, ciascun percorso trovato in una
#		  riga di output che dopo il percorso contiene la lunghezza del percorso.

for NAME in $PATH; do
	while [[ -n ${NAME} ]]; do
			PRIMAPARTE="${NAME%%:*}"
			echo "${PRIMAPARTE}"
			RESTO="${NAME#*:}"
			if [[ "${RESTO}" == "${NAME}" ]]; then break; fi
			NAME=$RESTO
	done
done
