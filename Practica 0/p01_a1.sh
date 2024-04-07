#!/bin/bash
echo "¿ Cual es tu nombre ?"
read n
echo "¿ Cual es tu apellido ?"
read a
echo "¿ Cual es tu año de nacimiento ?"
read y

anio=$(date +"%Y")
edad=$((anio-year))
echo "Hola $n $a y tu edad es: $edad, Biemvenido a Ubuntu"
