#!/bin/bash
ruta="$HOME/copia/"
echo "Recuerde indicar rutas absolutas"
read -p "¿ Que directorio quiere hacer la copia de seguirdad ?" segur
if [[ -d $segur ]]; then
	echo "Vamos a crear la copia de seguridad"
	if [[ -d $ruta ]]; then
		mkdir $ruta
	fi
	tar -cvzf $ruta/CopiadeSeguridad.tar.gz $segur
else
	echo "El directorio no existe"
	exit 1
fi
echo "Directorio comprimido"
