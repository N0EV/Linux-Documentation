#!/bin/bash
echo "Que cosas quiere añadir a su lista de la compra? "
read -a lista
i=1
for compra in ${lista[@]}
do
	echo $i-$compra
	((i++))
done
