#!/bin/bash
read -p "Que temperatura en ºC qiere pasar a fahrenheit? " celsius
fahrenheit=$(echo "scale=2; $celsius * 9 / 5 + 32" | bc)
echo "Hay tantos $fahrenheit grados fahrenheit"
