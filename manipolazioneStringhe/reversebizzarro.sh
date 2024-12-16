#!/bin/bash

#	Scrivere uno script reversebizzarro.sh che prende una stringa come unico
#	argomento e mette in output la stringa con i caratteri in ordine invertito, il primo
#	andrà per ultimo, l'ultimo per primo. Per complicarvi la vita, per implementare questo
#	script potete utilizzare solo assegnamenti a variabili, cicli ed if a piacere, ed i
#	comandi echo read e cut. Si suppone che la stringa passata come argomento non
#	contenga caratteri e metacaratteri interpretati dalla bash.

if (( $# != 1 )); then echo "Unvalid number of args"; exit 1; fi
OUT=""
echo $1 | while (( 1 )); do read -n 1 CHAR
	if (( $? == 0 )); then #exit status corretto
		OUT="${CHAR}${OUT}"
else echo ${OUT}; break
fi
done

