#!/bin/bash
cat esame2.txt
while read matr voto1 ; do 
	OUT=`grep $matr esame2.txt` ; 
	if [[ $OUT == "" ]] ; 
		then echo $matr $voto1 ; 
	fi ; 
done    < esame1.txt
