#!/bin/bash
for fichero in "$@"; do
	if [[ -f $fichero ]]; then
		echo "Se van a cambiar los permisos del $fichero"
		chmod u+x $fichero
	else
		echo "El fichero $fichero no existe"
	fi
done
