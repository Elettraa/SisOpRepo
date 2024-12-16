#!/bin/bash

#	Scrivere uno script backslash.sh che riceve righe di testo dallo standard input. Lo
#	script deve leggere ciascuna riga e modificarla, aggiungendo davanti a ciascun
#	metacarattere * ? [ ] un bel carattere backslash \ . Lo script deve mandare
#	sullo standard output ciascuna riga modificata.

while read RIGA; do
	echo "${RIGA}" | sed 's/?/\\?/g;s/*/\\*/g;s/\[/\\\[/g;s/\]/\\\]/g'
done

#oppure:

#	sed 's/?/\\?/g;s/*/\\*/g;s/\[/\\\[/g;s/\]/\\\]/g'
