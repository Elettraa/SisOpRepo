#!/bin/bash

#	Esercizio inventato da Nicholas Magi: preso un numero n con n arg, calcolare
#	il numero n di fibonacci ricorsivamente

if (( $# != 1 )); then exit 1; fi
if [[ $1 == 0 ]]; then FIBO=0;
else
	VAR=${FIBO}
	FIBO=$(( ${FIBO}+${FIBOPREV} ))
	FIBOPREV=${VAR}
fi
if [[ $1 -ge ${NUM} ]]; then echo ${FIBO}; exit 0; fi
source ./fibonacciRicorsivo.sh "$(($1+1))"

