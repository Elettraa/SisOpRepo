#!/bin/bash

OUT=""
for ARG in "$@"; do
OUT="${ARG} ${OUT}"
done
echo ${OUT}


#oppure


NUM=$#
while (( ${NUM} > "0" )) ; do
echo "arg ${NUM} is ${!NUM} "
((NUM=${NUM}-1))
done
