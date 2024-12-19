#!/bin/bash

NUM="$@"
FIBO=0
FIBOPREV=1
if (( $# != 1 )); then echo "Error"; exit 1; fi
source ./fibonacciRicorsivo.sh 0
