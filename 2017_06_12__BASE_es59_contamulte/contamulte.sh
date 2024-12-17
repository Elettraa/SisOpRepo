#!/bin/bash

while read NOME COGNOME MULTA DATA; do
	echo "${MULTA}"
done | uniq -c | while read OCC MULTA; do echo "${MULTA} ${OCC}"; done
