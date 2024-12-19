#!/bin/bash

#	Esercizio inventato da Nicholas Magi: moltiplicazione tra matrici in file separati
MAT1="matrice1.txt"
MAT2="matrice2.txt"
LM1=$(while read LINE; do echo "$LINE"; break; done <"${MAT1}" | wc -w)
HM1=$(cat "${MAT1}" | wc -l)
HM2=$(cat "${MAT2}" | wc -l)
LM2=$(while read LINE; do echo "$LINE"; break; done <"${MAT2}" | wc -w)
if (( "${HM1}"!="${LM2}" )); then 
echo "Can't do"; exit 1;
fi

MATRES=""

for (( J=1; ${J}<=${HM2}; J=${J}+1 )); do
	for (( I=1; ${I}<=${LM1}; I=${I}+1 )); do
		Cij=0
		for (( Z=1; ${Z}<=${LM2}; Z=${Z}+1 )); do
		ADD=$()
		Cij=$(( ${Cij}+${ADD} ))
done
done
MATRES="${MATRES}\n"
done

echo -e "${MATRES}"
