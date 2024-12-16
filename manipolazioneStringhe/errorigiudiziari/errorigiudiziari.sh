#!/bin/bash

#	Scrivere uno script errorigiudiziari.sh che, per ciascun verdetto contenuto nel file
#	verdetti.txt stampa una riga contenente: nome e cognome dell'accusato, descrizione del
#	reato e descrizione del verdetto.


while read IDPROCV VERDETTO; do
	while read NOME COGNOME IDDEND REATO; do
		while read IDDENP IDPROCP; do
			if [[ ${IDPROCV} == ${IDPROCP} && ${IDDEND} == ${IDDENP} ]]; then 
				echo "${NOME} ${COGNOME}, accusato di: ${REATO}. Verdetto: ${VERDETTO}"
			fi
		done <processi.txt
	done <denuncie.txt
done <verdetti.txt
