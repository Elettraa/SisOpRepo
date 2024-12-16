#!/bin/bash

#	Visualizzare a video le prime tre righe di ciascun file che sta nella directory
#	/usr/include/ e in tutte le sue sottodirectory. Attenzione alle directory.

find /usr/include/ -type f -exec head -n 3 '{}' \;

#	Aggiungere un comando in pipe al comando precedente per visualizzare solo i primi
#	3 caratteri di ciascuna riga.

find /usr/include/ -type f -exec head -n 3 '{}' \; | cut -b -3


#OPPURE

#	for name in `find /usr/include/ -type f` ; do head -n 3 ${name}; done | cut -b -3
