#!/bin/bash
echo "¿ Cual es tu nombre ?"
read nom
echo "¿ Cual es tu apellido ?"
read ape
echo "¿ Cual es tu año de nacimiento ?"
read ye

anio=$(date +"%Y")
edad=$((anio-year))
echo "Hola $nom $ape y tu edad es: $edad, Biemvenido a Ubuntu"
