#!/bin/bash

<<comment
Hacer un script que acepte como parámetro un número. El script debe avisar por
pantalla si no se le pasa ningún parámetro, o si el parámetro que se le pasa no es un
número. Una vez comprobado que le ha pasado un número, dibujara por pantalla tantos
caracteres @ como indique el número. (Así, si se le pasa como parámetro al script un
12, dibujará por pantalla @@@@@@@@@@@@ (12 veces la @).
comment

param=$1

# Restricciones
# Al menos un parametro
if [ $# -eq 0 ]; then
    echo "Se requiere al menos un parametro"
    exit 1
fi

# Comprobar que solo admita numeros enteros, y no otro tipo de caracter
if ! [[ "$param" =~ ^[0-9]+$ ]]; then
    echo "El parametro debe ser un numero"
    exit 1
fi

# Programa
for ((i=1; i<="$param"; i++)); do
    echo -n "@"
done

echo " "
