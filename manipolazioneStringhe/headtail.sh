#!/bin/bash

#	scrivere una riga di comando che mette sullo standard output le righe che stanno
#	tra la 3° e la 5° posizione nel file /usr/include/stdio.h

head -n 5 /usr/include/stdio.h | tail -n 3

#	scrivere una riga di comando che mette sullo standard output delle righe con i primi
#	3 caratteri delle ultime 4 righe del file /usr/include/stdio.h

tail -n 4 /usr/include/stdio.h | cut -b -4

#	scrivere una riga di comando che legge due righe da standard input e le mette in
#	output in ordine invertito.

read RIGA1 ; read RIGA2 ; echo -e "${RIGA2}\n${RIGA1}"

#	scrivere una riga di comando che legge una riga da standard input e mette in
#	output niente

read RIGA &> /dev/null

#	scrivere una riga di comando che legge righe da standard input e per ciascuna di
#	queste mette in output il numero di caratteri che la compongono

read RIGA ; echo ${#RIGA}
