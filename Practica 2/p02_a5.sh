#!/bin/bash
# Aqui estamos viendo que nos haya pasado dos parametros
if [[ $# -ne 1 ]];then
	# por que es el nombre del fichero y algo mas
	echo "Uso: bash $0 <nombre de archivo de texto>"
	# Si no se usa bien me salgo del script
	exit 1
fi
# Creo una variable para le dolar uno
archivo=$1
# Aqui veo que la variable archivo es un fichero
if [[ -f $archivo ]]; then
	# si es asi le paso esto
	npalabras=$(wc -w < "$archivo")
else
	# Si no es asi le digo que no es un fichero
	echo "Esto no es un fichero"
	# y me salgo
	exit 1
fi
#Despues le imprimo el numero de palabras
echo "En este fichero hay $npalabras palabras"
