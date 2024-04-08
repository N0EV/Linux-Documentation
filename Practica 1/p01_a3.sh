#!/bin/bash
# Aqui estamos comprobando que el usuario nos ha puesto
# dos ficheros
if [[ $# -ne 2 ]]; then
	echo "Uso: $0 <directorio> <fichero>"
	exit 1
fi
# Aqui estamos comprobando que $1 es un directorio existente
if [[ -d $1 ]]; then
	echo "El directorio no existe"
	exit 1
# Si no lo es el script se para de ejecutar
else
# Si lo es se empezara a ejecutar todo lo sieguiente
	#Crea el directorio con el nombre que le indique le $1
	mkdir $1
	#Se mueve hasta el
	cd $1
	#Lo lista
	ls /dev/t*[0-9] > $2
	#Y lee todo lo de dentro y se lo pasa a $2
	cat /etc/passwd >> $2
	#Y esto hace un listado mas exaustivo
	less $2
	cat $2 | more
fi
