#!/bin/bash

cut -b 3-5,10-15 textForExcercises.txt

#Per eliminare dall'output spazi bianchi, tabulazioni e asterischi:

cut -b 3-5,10-15 textForExcercises.txt | sed 's/\t//g;s/ //g;s/*//g'
