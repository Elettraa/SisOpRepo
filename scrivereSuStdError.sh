#!/bin/bash

echo "su stderr" 1>&2

#echo CIAO 1>&2
#	verificare lanciando echo CIAO 1>&2 | grep -v CIAO
#	se ridiretto su stderr dovremmo vedere CIAO a video nonostante il flag -v

