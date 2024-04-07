#!/bin/bash
while true; do
	echo "Menu:"
	echo "1- Conexiones actuales"
	echo "2- Contenido del directorio actual"
	echo "3- Limpiar la pantalla y salir del menú"
	read -p "Selecciona una opcion: " resp
	echo "El usuario ha seleccionado $resp"
case $resp in
	1)
	netstat -a;;
	2)
	ls -l;;
	3)
	clear
	break;;
	*)
	echo "Las opciones son desde el 1 hasta el 3; no hay mas opciones";;
esac
done
