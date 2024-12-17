#!/bin/bash

#	Lo script lancia.sh imposta tutto
#	quello che serve e poi lancia in esecuzione lo script figlio.sh (lo penso come se
#	avesse indice i==1) SENZA passargli argomenti a riga di comando, e poi termina

export INDICE=1
./figlio.sh
exit 0
