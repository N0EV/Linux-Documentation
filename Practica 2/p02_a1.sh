#!/bin/bash
respu="S"
while [[ $respu = "S" || $respu = "s" ]]; do
	read -p "Que directorio quiere crear?: " resp

	if [[ -d $resp ]]; then
		echo "Este directorio $resp ya existe"
	else
		mkdir $resp
		echo "Se ha creaddo el directorio $resp"
	fi
	read -p "¿ Quieres crear otro directorio? (S/N) ?" respu
done
