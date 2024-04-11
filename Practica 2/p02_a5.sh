#!/bin/bash
if [[ $# -ne 1 ]];then
	echo "Uso: <nombre de archivo de texto>"
fi

if [[ -f $1 ]]; then
	npalabras=$(wc -w < "$1")
fi
echo $npalabras
