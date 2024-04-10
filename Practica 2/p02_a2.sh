#!/bin/bash
# Para este script vamos a tener que crear las carpetas necesarias en el home (linux)
echo "Vamos a ordenar las descaras"
cd ~/Descargas
# Aqui podriamos poner variables para las rutas pero yo no lo he hecho
# otro dato es que en linux hay una variable que es $HOME que es el home
# del usuario que lo este usando
# Aqui vamos a coger todo lo que haya en descargas dado que hemos ido antes
for [[ archivo in * ]]; do
	extension=${archivo##*.}
	case $extension in
		jpg|jpeg|png)
			mv $archivo ~/Imágenes;;
		mp3|mp4)
			mv $archivo ~/Música;;
	esac
done
