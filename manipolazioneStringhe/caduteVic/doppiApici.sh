#!/bin/bash

#	Realizzare uno script bash che scrive sullo standard output solo il TERZO campo di ciascuna riga
#	del file cadutevicConDoppiApici.txt

OLDIFS=${IFS}
IFS='"'
while read INIZIO ANNO SPAZIO LUOGO SPAZIO2 CAUSE TUTTOILRESTO; do
	echo ${CAUSE}
done <cadutevicConDoppiApici.txt

IFS=${OLDIFS}

#oppure :


#while read RIGA ; do
#	TERZOeQUARTO=${RIGA#\"*\"*\"*\"}
#			#echo TERZOeQUARTO is ${TERZOeQUARTO}
#	TERZO=${TERZOeQUARTO%\"*\"*\"}\"
#	echo TERZO is ${TERZO}
#	done < cadutevic.txt
