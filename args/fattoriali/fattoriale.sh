#!/bin/bash

NUM=1
RIS=1
while (( $NUM <= $1 )); do
	RIS=$(( ${RIS}*${NUM} ))
	NUM=$(( ${NUM}+1 ))
done
echo $RIS
