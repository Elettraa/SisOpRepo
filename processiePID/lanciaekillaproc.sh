#!/bin/bash

PIDS=`./lanciaeprendipid.sh`
echo "$PIDS"

for PID in ${PIDS}; do
	sleep 1
	kill -9 ${PID}
done

#oppure

#	if (( $1 > 0 )) ; then
#	./lanciaricorsivo.sh $(( $1 -1 )) &
#	echo $!
#	wait $!
#	fi
