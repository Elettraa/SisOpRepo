#!/bin/bash

#	Implementare uno script bash chiamandolo concatena.sh
#	Lo script concatena.sh scrive il proprio output nel file output.txt
#	Se il file output.txt esiste già lo script lo svuota eliminando il contenuto.
#	Lo script concatena.sh cerca tutti i files che stanno nella directory /usr/include/ e il cui nome inizia con la
#	stringa std, ma non cerca nelle sottodirectory.
#	Per ciascuno dei file trovati, lo script concatena.sh aggiunge al file output.txt la seconda, terza e quarta riga di
#	quel file trovato.

for FILE in `ls -f /usr/include/std*`; do
	head -n 4 ${FILE} | tail -n 3
#echo "_______"
done >output.txt
cat output.txt
