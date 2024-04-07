#!/bin/bash
read -p "Dame tu primer numero: " num1
read -p "Dame tu segundo numero: " num2
read -p "Que operacion quiere realizar? (resta,suma,multiplicacion,division): " respuesta
case $respuesta in
	resta)
		rst=$(($num1 - $num2));;
	suma)
		rst=$(($num1 + $num2));;
	division)
		rst=$((echo "scale=2; $num1 / $num2" | bc);;
	multiplicacion)
		rst=$(($num1 * $num2));;
esac
echo "Tu resultado es $rst"
