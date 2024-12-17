#!/bin/bash

if (( $# != 1 )); then echo "Invalid num of args"; exit 1; fi

./inverti.sh <"$1"
