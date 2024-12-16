#!/bin/bash

for P in ${PATH}; do
        while [[ -n $P ]]; do
                SECT=${P%%:*}
                P=${P#*:}
                SECT2=$SECT
                                        while [[ -n $SECT2 ]]; do
                                                FRACT=${SECT2%%/*}
                                                SECT2=${SECT2#*/}
                                                echo $FRACT
                                        if [[ $SECT2 == $FRACT ]]; then break; fi
                                        done
        if [[ $P == $SECT ]]; then
        break
fi
done
done
