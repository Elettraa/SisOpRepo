#!/bin/bash
VAR=""
while read COL1 COL2; do
VAR="${VAR}\n${COL2} ${COL1}"
done <file2colonne.txt
echo -e "${VAR#\\n}" >file2colonne.txt



