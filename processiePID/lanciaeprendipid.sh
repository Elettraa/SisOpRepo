#!/bin/bash

#	Lo script lanciaeprendipid.sh deve lanciare in background 10 istanze dello script precedente
#	puntini.sh ridirigendo l'output di questi script sullo standard error.

OUT=""
for I in {1..10}; do
	./usosleep.sh 30 1>&2 &
	OUT="${OUT} ${!}"
done
echo ${OUT}


#oppure

#	for ((NUM=0;${NUM}<10;NUM=${NUM}+1));do
#	./puntini.sh 30 1>&2 &
#	echo -n "$! " ;
#	done

