#!/bin/bash

#	Scrivere uno script bash triplette.sh che stampa a video tutte le triplette di forma
#	(X;Y;Z) dove X Y e Z sono i nomi dei file, non nascosti, nella directory corrente.

#!/bin/bash
NOMIFILES=`ls`
for nome1 in ${NOMIFILES} ; do
	for nome2 in ${NOMIFILES} ; do
		for nome3 in ${NOMIFILES} ; do
# echo "(${nome1};${nome2};${nome3})" ;
			echo \(${nome1} \; ${nome2} \; ${nome3}\) ;
		done
	done
done
