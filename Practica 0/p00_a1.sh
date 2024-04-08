#!/bin/bash
read nombre
echo "¿ Cual es tu apellido ?"
read apellido
echo "¿ Cual es tu año de nacimiento ?"
read anio

anio=$(date +"%Y")
edad=$((anio-year))
echo "Hola $nombre $apellido y tu edad es: $edad, Biemvenido a Ubuntu"

