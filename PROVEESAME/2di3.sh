#!/bin/bash

#	Implementare uno script 2di3.sh che legge una dopo l'altra le righe di testo del file /usr/include/stdio.h .
#	Per ciascuna riga lo script mette sullo standard output una riga che contiene il solo secondo carattere della
#	terza parola di quella riga.
#	Se in una riga del file letto ci sono meno di 3 parole allora lo script non stampa nulla relativo a quella riga.
#	Se nella terza parola di una riga del file ci sono meno di 2 caratteri allora lo script non stampa nulla relativo a
#	quella riga.

while read PRIMA SECONDA TERZA TUTTOILRESTO; do
	CHAR=${TERZA:1:1}
	if [[ "${CHAR}" != "" ]]; then
	echo "${CHAR}"
fi
done </usr/include/stdio.h
