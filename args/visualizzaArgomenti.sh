#!/bin/bash

echo "$@"
./visualizzaArgomentiInOrdineInverso.sh "$@"


#oppure

NUM=1
while (( ${NUM} <= $# )) ; do
echo "arg ${NUM} is ${!NUM} "
((NUM=${NUM}+1))
done
./visualizzaArgomentiInOrdineInverso.sh "$@"
