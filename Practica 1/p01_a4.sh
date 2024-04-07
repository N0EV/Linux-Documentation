#!/bin/bash
if [[ $# -ne 2 ]]; then
	echo "Uso: $0 <fichero> <fichero>"
	exit 1
fi

if [[ -f $1 && -f $2 ]]; then
	read -p "¿ Quieres sobreescribir el fichero $2 ? (S/N)" resp1
		if [[ $resp1 = "S" || $resp1 = "s" ]]; then
			cp $1 $2
			echo "Se ha copiado correctamente"
		else
			echo "No se ha sobreescrito el fichero $2"
		fi
else
	echo "Tienen que existir los dos ficheros"
fi
