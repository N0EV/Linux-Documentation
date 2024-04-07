#!/bin/bash
read -p "Introduzca su contraseña: " secreto
if [[ $secreto = "secreto234" ]]; then
	echo "La contraseña es correcta"
else
	echo "La constraseña es incorrecta"
fi
