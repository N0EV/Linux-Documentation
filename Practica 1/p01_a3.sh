#!/bin/bash
if [[ $# -ne 2 ]]; then
	echo "Uso: $0 <directorio> <fichero>"
	exit 1
fi

if [[ -d $1 ]]; then
	echo "El directorio no existe"
	exit 1
else
	mkdir $1
	cd $1
	ls /dev/t*[0-9] > $2
	cat /etc/passwd >> $2
	less $2
	cat $2 | more
fi
