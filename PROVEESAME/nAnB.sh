#!/bin/bash

#	Realizzare uno script nAnB.sh che prende come argomento una stringa di testo e verifica che la stringa sia
#	formata esattamente da N caratteri A seguiti da N caratteri B, con un N qualunque maggiore di zero.
#	Se la stringa corrisponde ai requisiti lo script scrive sullo standard output la parola "vero" seguita dal Numero
#	N individuato.
#	Altrimenti scrive "falso".
#	Ad esempio, passando come argomento:
#		AAABBB vedo in output "vero N=3"
#		ADABBB vedo in output "falso" perché c'è carattere diverso da A e da B
#		AAB vedo in output "falso"
#		AabB vedo in output "falso"

if (( $# == 0 )); then echo "Must enter string as argument"; exit 1; fi
if (( ${#1}%2!=0 )); then echo "falso" ; exit 0 ; fi
N=$(( ${#1}/2 ))
STRINGA=""
for (( I=0; ${I}<${N}; I=${I}+1 )); do
	STRINGA="${STRINGA}A"
done 
for (( I=0; ${I}<${N}; I=${I}+1 )); do
        STRINGA="${STRINGA}B"
done

if [[ $1 == ${STRINGA} ]]; then
	echo "vero N=${N}"; exit 0
fi
echo "falso"

#OPPURE:

TEXT="$1"
COUNT_A=0
COUNT_B=0
LEN=0
STATUS=0
while (( LEN<${#TEXT} )); do
        CHAR=${TEXT:${LEN}:1} #Prendo in considerazione la sottostringa nLEN di lunghezza 1
        if [[ ${CHAR} ==  "A" ]]; then
                COUNT_A=$((${COUNT_A}+1))
        elif [[ ${CHAR} == "B" ]]; then
                COUNT_B=$((${COUNT_B}+1))
        else STATUS=1
        fi
        LEN=$((${LEN}+1))
done
if [[ ${COUNT_A} == ${COUNT_B} && ${STATUS} == 0 ]]; then
        echo "Vero N=${COUNT_A}"
else
        echo "Falso"
fi
