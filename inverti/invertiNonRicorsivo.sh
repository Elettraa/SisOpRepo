#!/bin/bash
if (( $# != 1 )); then echo "Invalid num of args"; exit 1; fi

OUT=""
while read LINEA; do
	OUT="${LINEA}\n${OUT}"
done <$1
echo -e "${OUT%*\\n}"
