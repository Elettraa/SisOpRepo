#!/bin/bash

KEY="SISTEMI OPERATIVI"
echo "$(grep -B 1 --no-group-separator "${KEY}" lista.txt | grep -v "${KEY}" | cut -d " " -f 1)"
