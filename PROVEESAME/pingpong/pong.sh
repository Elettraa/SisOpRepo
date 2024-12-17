#!/bin/bash

while (( 1 )); do
while [ ! -e ping.txt ]; do
        sleep 2
done
echo "pong"
rm ping.txt
touch pong.txt
sleep 2
done
