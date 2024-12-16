#!/bin/bash

#	Scrivere uno script cercadir.sh che cerca tra tutti i file e directory contenuti nella
#	directory /usr/include (non nelle sue sottodirectory) e stampa in output il percorso
#	assoluto dei file che verificano tutte le seguenti proprietà:
#	a) sono delle directory,
#	b) hanno il permesso di lettura da parte dello user attuale, 
#	c) la data di ultima modifica del file è strettamente più recente di quella del file /usr/include/stdio.h 


for ELEM in /usr/include/*; do
if [[ -d ${ELEM} && -r ${ELEM} && ${ELEM} -nt /usr/include/stdio.h ]]; then
	echo /usr/include/${ELEM}
fi
done

#oppure

for name in `ls /usr/include/` ; do
 if test -d /usr/include/${name} -a \
 -r /usr/include/${name} -a \
 /usr/include/${name} -nt /usr/include/stdio.h ;
 then
 echo ${name}
 fi
done
