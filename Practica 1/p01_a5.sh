#!/bin/bash
if [[ $# -ne 1 ]]; then
	echo "Uso: $0 <fichero>"
	exit 1
fi

if [[ ! -f $1 ]]; then
	echo "El fichero $1 no existe en este lugar"
	exit 1
else
	read -p "¿ Quiere eliminar el fichero ? (S/N)" respu
		if [[ $respu = "S" || $respu = "s" ]]; then
			if [[ -d "/tmp" ]]; then
				cp $1 "/tmp"
				echo "Se ha guardado el fichero $1 por seguridad en /tmp"
				rm $1
				echo "El archivo $1 se ha eliminado correctamente de este directorio"
			fi
		elif [[ $respu = "N" || $respu = "n" ]]; then
			echo "fichero $1 no eliminado"
		elif [[ $respu = * ]]; then
			echo "Uso: $0 <fichero>"
			echo "El fichero tiene que existir para poder eliminarlo"
		fi
fi
