#!/bin/bash
if  [[ $# -ne 2 ]]; then
	echo "Uso: $0 <nombre del grupo primario> <nombre del grupo secundario"
	exit 1
fi
grupo_primario=$1

grupo_secundario=$2

id_grupo_primario=$(grep "^$grupo_primario:" /etc/group | cut -d: -f3)

usuarios=$(grep -E "^[^:]+:[^:]+:[^:]+:$id_grupo_primario" /etc/passwd | cut -d: -f1)
if [[ -z $usuarios ]]; then
	echo "No se encontraron usuarios en el grupo primario '$grupo_primario'."
for usua in $usuarios; do
	sudo adduser "$usuarios" "$grupo_secundario"
	echo "El usuario $usuario ha sido agregado al grupo secundario '$grupo_secuandario' correctamente"
done
