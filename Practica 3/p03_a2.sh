#!/bin/bash
if  [[ $# -eq 0 ]]; then
	echo "Uso: $0 <nombre del grupo primario>"
	exit 1
fi
grupo_primario=$1

id_grupo_primario=$(grep "^$grupo_primario:" /etc/group | cut -d: -f3)

usuarios=$(grep -E "^[^:]+:[^:]+:[^:]+:$id_grupo_primario" /etc/passwd | cut -d: -f1)

for usua in $usuarios
do
	echo $usua
done
