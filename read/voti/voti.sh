#!/bin/bash

### Nei commenti che seguono vedete dei suggerimenti sull'algoritmo da
### seguire per produrre l'output corretto.
###

# I voti della seconda prova li devo mettere tutti nello standard output


# Poi devo mettere nello standard output i voti della prima prova
# ottenuti dagli studenti che non hanno un voto nella seconda prova

#	Implementare uno script voti.sh che legge i due file esame1.txt ed esame2.txt e
#	mette in output delle righe; ciascuna riga contiene il voto più recente ottenuto da
#	uno studente preceduto dal numero di matricola di quello studente.
#	Il pratica lo script voti.sh deve mettere in output il voto più recente di ciascuno
#	studente, nello stesso formato dei file di input.

while read MAT VOTO; do
	echo "${MAT} ${VOTO}" 
done <esame2.txt 
while read MAT VOTO; do
	if [[ ! `grep "${MAT}" esame2.txt` ]]; then 
	echo "${MAT} ${VOTO}"; fi
done <esame1.txt
