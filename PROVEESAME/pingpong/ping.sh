#!/bin/bash

#	Scrivere due script ping.sh e pong .sh in cui il processo ping imposta il necessario, poi lancia in
#	background il processo pong e infine inizia a ciclare per passarsi ripetutamente il testimone con il
#	processo pong.sh.
#	I due processi devono fare il necessario per stampare a video, alternandosi, il proprio nome.
#	Ogni processo informa l’altro processo che è il turno dell’altro, creando un file che si chiama come
#	l’altro processo ma con estensione .txt invece che .sh
#	Prima di passare il controllo all’altro processo, ogni processo elimina il file che ha il proprio nome ma
#	con estensione .txt invece che .sh
#	Per non usare troppa CPU, ogni processo verifica l’esistenza del file, avente il proprio nome ma
#	estensione diversa, solo una volta ogni 2 secondi.

./pong.sh &
while (( 1 )); do
touch pong.txt
echo ping
while [ -e pong.txt ]; do
	sleep 2
done
if [ -e ping.txt ]; then rm ping.txt; fi
done
