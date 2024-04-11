#!/bin/bash
cd ~/Documentos
ls -l ~/Documentos

for archivo in *; do
	fecha_creacion=$(stat -c %y "$archivo" | cut -d' ' -f1)
	anio=$(date -d "$fecha_creacion" "+%Y")
	mes=$(date -d "$fecha_creacion" "+%m")
	dirdestino="$anio"_"$mes"
		if [[ ! -d $dirdestino ]]; then
			mkdir $dirdestino
		fi
	mv $archivo $dirdestino
done
