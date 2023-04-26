#!/bin/bash

<<comment
Hacer un script que nos pida por pantalla nuestro nombre, y nos diga cuantas letras
tiene.
comment

read -p "Introduce tu nombre: " nombre

long=$(echo -n $nombre | wc -m)

echo "El nombre $nombre tiene $long letras"

