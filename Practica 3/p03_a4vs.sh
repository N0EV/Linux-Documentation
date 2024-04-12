#!/bin/bash
echo "Usuario: Fecha de cambio de contraseña"
fecha_inicio="1970-01-01"
contenido_shadow=$(sudo cat /etc/shadow)
for linea in $contenido_shadow; do
	usuario=$(echo "$linea" | cut -d: -f1)
	fecha_cambio=$(echo "$linea" | cut -d: -f3)
	fecha_legible=$(date -d "$fecha_inicio + $fecha_cambio days" "+%Y-%m-%d")
	echo "$usuario: $fecha_legible"
done
