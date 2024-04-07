#!/bin/bash
if [[ $# -ne 1 ]]; then
	echo "Uso: $0 + <nombre del fichero>"
	exit 1
fi

if [[ ! -e $1 ]]; then
	echo "El archivo $1 no existe"
	exit 1
fi
mensaje=""
if [[ -r $1 ]]; then
	mensaje+="es de lectura, "
fi
if [[ -w $1 ]]; then
	mensaje="es de escritura, "
fi
if [[ -x $1 ]]; then
	mensaje="es de ejecucion."
fi
	echo "es de $mensaje"
