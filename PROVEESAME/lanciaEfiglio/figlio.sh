#!/bin/bash

#	Ciascuno script figlio (i-esimo) lancia in esecuzione lo script figlio.sh ((i+1)-esimo)
#	SENZA passargli argomenti a riga di comando, e poi termina.
#	La sequenza di script uno figlio dell'altro termina quando in totale sono stati messi in
#	esecuzione 10 script figlio.sh più lo script iniziale lancia.sh.
#	Ciascun i-esimo script figlio.sh deve mettere in output il proprio pid .
#	Dopo di questo, se i è maggiore di 10 allora lo script termina; se invece i è minore o
#	uguale a 10 allora lo script lancia lo script figlio.sh e poi termina.

echo "$$"
if (( ${INDICE} < 10 )); then 
INDICE=$(( ${INDICE}+1 ))
./figlio.sh
fi
