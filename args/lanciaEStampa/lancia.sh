#!/bin/bash

#	Lo script lancia.sh determina il numero degli argomenti che gli sono stati passati a
#	riga di comando ed esegue lo script stampaargs.sh passandogli come primo
#	argomento il numero di argomenti trovato seguito da tutti gli argomenti che erano
#	stati passati a lancia.sh stesso.

./stampaargs.sh "$#" "$@"
