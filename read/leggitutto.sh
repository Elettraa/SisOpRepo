#!/bin/bash

while read RIGA; [[ $? == 0 || ${RIGA} != "" ]]; do
	echo "${RIGA}"
done #con reindirizzamenti

#oppure


exec {FD}< ./miofileNoNL.txt
if (( $? == 0 )) ; then
while read -u ${FD} RIGA ; [[ $? == 0 || ${RIGA} != "" ]] ; do
 echo "${RIGA}"
done
exec {FD}>&-
fi
