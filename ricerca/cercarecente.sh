#!/bin/bash

#	Scrivere uno script bash cercarecente.sh che comincia cercando tutti i file con estensione .h in
#	tutte le sottodirectory della directory /usr/include/linux/ escludendo i files che si trovano
#	direttamente nella directory /usr/include/linux/
#	Confrontare la data di ultima modifica dei file così trovati e stampare a video il nome del file
#	modificato più recentemente.


MOSTREC=""
for FILE in `find /usr/include/linux/ -mindepth 2 -name "*.h"`; do
	MOSTREC=$FILE
	break; done
for FILE in `find /usr/include/linux/ -mindepth 2 -name "*.h"`; do
	if [[ ${FILE} -nt ${MOSTREC} ]]; then
	MOSTREC=${FILE}
	fi
done
echo $MOSTREC
