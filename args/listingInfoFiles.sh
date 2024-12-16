#!/bin/bash

#	Scrivere uno script che usa anche il comando for per visualizzare, per ciascun file
#	della directory corrente che non inizia per . , una coppia di righe in cui:
#	la prima riga contiene la stringa “file is ” seguita dal nome del file
#	la seconda riga fa il listing delle informazioni sul file. Se il file è una directory, il
#	listing deve contenere solo il nome della directory, non quello dei suoi files.


for name in * ; do
echo "file is ${name}"
ls -ld ${name}
done

echo -e "\noppure\n"

for name in `ls -1` ; do
echo "file is ${name}"
ls -ld ${name}
done
