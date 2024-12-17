#!/bin/bash

#	Realizzare uno script asterischi.sh che conta quante sono le righe che contengono
#	almeno un asterisco * in tutti i file il cui nome termina con .h nella parte di
#	filesystem a partire dalla directory /usr/include/
#	Lo script deve stampare sul proprio standard error il numero delle righe contate.

grep "*" `find /usr/include/ -type f -name "*.h"` | wc -l 1>&2


echo ` find /usr/include/ -type f -name "*.h" -exec grep -H '*' '{}' \; | wc -l `
1>&2 


for name in ` find /usr/include/ -type f -name "*.h" ` ; do
grep -H '*' ${name} 
done | wc -l 1>&2
