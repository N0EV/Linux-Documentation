#!/bin/bash
if [[ $# -ne 1 ]];then
	echo "Uso: <nombre de archivo de texto>"
fi
archivo=$1
if [[ -f $1 ]]; then
	npalabras=$(wc -w < "$archivo")
fi
echo $npalabras
