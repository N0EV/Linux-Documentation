#!/bin/bash
cd ~/Documentos
ls -l ~/Documentos

for archivo in *; do
	fecha_creacion=$(stat -c %Y "$archivo" | cut -d'' -f1)
	anio=$(date -d "$fecha_creacion" "+%Y")
	mes=$(date -d "$fecha_creacion" "+%m")
	dirdestino="$anio_$mes"
	if [[ -d $dirdestino ]]; then
		mv $archivo $dirdestino
	else
		mkdir $dirdestino
		mv $archivo $dirdestino
	fi
done
