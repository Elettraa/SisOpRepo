#!/bin/bash

#deve leggere una per una le righe provenienti
#dallo standard input e stampare a video, per ciascuna riga, la quarta e la terza
#parola della riga, in quest'ordine, separate da spazi.
#L'output dovrà essere :
#	quattro tre
#	gamma *
#	four three

while read PRIMA SECONDA TERZA QUARTA; do
	echo "${QUARTA} ${TERZA}"
done

#oppure

while (( 1 )) ; do
read prima seconda terza quarta
if (( $? == 0 )) ; then
echo "${quarta} ${terza}"
else
break
fi
done <asterischi.txt
