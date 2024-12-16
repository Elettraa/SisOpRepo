#!/bin/bash

#	Lo script stampaargs.sh stampa a video gli argomenti che ha ricevuto a riga di
#	comando, ciascuno in una diversa riga di output.

for ARG in "$@"; do
echo "${ARG}"
done
