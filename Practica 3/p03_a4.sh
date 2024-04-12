#!/bin/bash
fechini="1970-01-01"

if [[ $# -eq 0 ]]; then
	echo "Uso: $0 <nombre usuario>"
	exit 1
fi
for usua in $@; do
dia=$(grep "$usua" /etc/shadow | cut -d: -f3)
fecha=$(date -d "$fechini + $dia days" "+%Y-%m-%d")

echo "$dia despues de $fechini; es $fecha"
done
