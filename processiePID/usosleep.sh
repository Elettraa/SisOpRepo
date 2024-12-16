#!/bin/bash

#	Scrivere uno script puntini.sh che prende come argomento a riga di comando un
#	intero positivo che rappresenta un certo numero di secondi. Lo script deve rimanere
#	in esecuzione per quel numero di secondi e, ad ogni secondo, stampare a video un
#	punto . seguito dal proprio PID. Ma senza andare a capo.

if (( $# != 1 )); then echo "Invalid number of arguments." ; exit 1; fi

SEC="$1"
while (( ${SEC}>0 )); do
	sleep 1
	echo -n ". ${BASHPID} "
	SEC=$(( ${SEC}-1 ))
done
