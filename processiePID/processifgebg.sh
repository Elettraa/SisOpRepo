#!/bin/bash

./usosleep.sh 30

#	Eseguire lo script precedente passandogli un argomento intero >= 30. Poi digitare
#	alcuni comandi per sospendere lo script e mandarlo in background, poi riportarlo in
#	foreground e poi dopo una decina di secondi sospenderlo e riportarlo in
#	background. Infine killare lo script usando il suo pid (process identifier).

# CTRL Z		sospende lo script
# bg			manda il processo in background
# fg			manda il processo in foreground
# dopo 10s
# CTRL Z
# bg
# kill -9 $!		killa il processo usando il PID

#	Eseguire lo script in modo da mandarlo direttamente in background subito, senza
#	sospenderlo. Poi killare lo scrip

./usosleep.sh 30 &	#manda direttamente il processo in bg
kill -SIGKILL $! 	#killa il processo
