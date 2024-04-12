#!/bin/bash
# Aqui estoy almacenando la ruta en una variable
ruta="$HOME/copia/"
# Aqui le recuerdo que use rutas absolutas
echo "Recuerde indicar rutas absolutas"
# Aqui le estoy leyendo lo que me pase por consola
read -p "¿ Que directorio quiere hacer la copia de seguirdad ?" segur
# Aqui estoy comprobando si la variable segur es un directorio
# si lo es entonces le digo que voy a crear una copia de seguridad
if [[ -d $segur ]]; then
	echo "Vamos a crear la copia de seguridad"
	# Aqui estoy comprobando que la ruta que hemos hecho antes existe
	if [[ -d $ruta ]]; then
	# Si no es asi lo creo
		mkdir $ruta
	fi
	# Una vez tenemos los dos datos hacemos un tar para el paquete y la compresion en gzip
	tar -cvzf $ruta/CopiadeSeguridad.tar.gz $segur
else
	# Si no hay ese directorio le decimos que el directorio no existe
	echo "El directorio no existe"
	# y nos salimos del script
	exit 1
fi
# Si todo a salido bien saldria este resultado
echo "Directorio comprimido"
