#!/bin/bash
echo "Me puedes pasar los numeros porfa:"
read n1
read -p "Me puedes pasar el segundo numero: " n2
resta=$(($n1-$n2))
echo "La diferencia estre los numeros $n1 y $n2 es: $resta"
