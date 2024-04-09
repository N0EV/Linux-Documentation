#!/bin/bash
# Aqui estamos comprobando que el usuario no ha puesto 1 porque necesitamos dos parametros
# minimo o que no a puesto 2 por que necesitamos 3 minimo
# esto se puede ver en donde pone uso dado que $0 es el ejecutable que le da el
# usuario
if [[ $# -ne 1 && -ne 2 ]]; then
	echo "Uso: $0 <nombre fichero>"
	echo "Uso: $0 <nombre origen> <nombre destino>"
	exit 1
fi
# Si esto es correcto se pasa al case que se escoge dependiendo de lo que
# es usuario eliga
case $# in
	1)
	echo "Introduce el texto que quieres escribir:"
	read resp
	echo $resp >> $1
	echo "Se ha incluido el texto <<$resp>> en el fichero $origen";;
	2)
	if [[ -f $1 ]]; then
		cat $1 >> $2
		echo "Se ha incluido el fichero $1 en el fichero $2"
	else
		echo "No existe el fichero $1"
	fi;;
esac
