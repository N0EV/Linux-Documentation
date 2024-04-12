#!/bin/bash
# Aqui le pongo una variable que quiera guardar en grupos
if [[ $# -eq 0 ]]; then
	echo "Uso: $0 <todos los usuarios que quiera>"
	exit 1
fi
for grupos in $@
# y que haga lo siguiente
do
	groups $grupos
done
# Y acaba aqui
