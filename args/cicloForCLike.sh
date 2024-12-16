#!/bin/bash
LIMIT=10
for ((NUM=2; ${NUM}<=${LIMIT}; NUM=${NUM}+2)); do
echo "${NUM}"
done
