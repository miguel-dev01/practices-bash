#!/bin/bash

<<comment
Hacer un script que acepte como parámetro una palabra. El script debe reescribir la
palabra por la pantalla, pero cambiando la a por un 1, la e por un 2, la i por un 3, lo o
por un 4 y la u por un 5.
comment

palabra=$1
resultado=""
long=$(echo -n "$palabra" | wc -m)

for i in $(seq "$long"); do
    c=$(echo "$palabra" | cut -c "$i")

    if [ "$c" = "a" ]; then
        resultado+="1"
    elif [ "$c" = "e" ]; then
        resultado+="2"
    elif [ "$c" = "i" ]; then
        resultado+="3"
    elif [ "$c" = "o" ]; then
        resultado+="4"
    elif [ "$c" = "u" ]; then
        resultado+="5"
    else 
        resultado+=$c
    fi
done

echo "$resultado"