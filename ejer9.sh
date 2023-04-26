#!/bin/bash

<<comment
Hacer un script que nos pida el número de alumnos de una clase. Posteriormente irá
pidiendo la nota de cada una de ellos para la asignatura de ISO. Al final indicará el
número de aprobados, el número de suspensos y la nota media.
comment

read -p "Introduce el numero de alumnos: " num_alu

# Pequeña restriccion para el usuario
if [ $num_alu -le -1 ] || [ $num_alu -ge 31 ]; then
    echo "Cantidad de alumnos no valida"
    exit 1
fi

num_aprobados=0
num_suspensos=0

# Variable unida a la media

i=1
while [ $i -le $num_alu ]; do
    read -p "Introduce nota para asignatura ISO: " nota_iso

    # Pequeña restriccion para el usuario
    if [ $nota_iso -le -1 ] || [ $nota_iso -ge 11 ]; then
        echo "La nota $nota_iso NO es una nota valida"
        exit 1
    fi
    
    # Vamos sumando los aprobados
    if [ $nota_iso -ge 5 ] && [ $nota_iso -le 10 ]; then
        ((num_aprobados++))
    fi

    # Vamos sumando los suspensos
    if [ $nota_iso -ge 0 ] && [ $nota_iso -le 4 ]; then
        ((num_suspensos++))
    fi

    sumar_notas=$(($sumar_notas + $nota_iso))

    ((i++))
done

nota_media=$(($sumar_notas / $num_alu))

echo "El numero de aprobados es: $num_aprobados"
echo "El numero de suspensos es: $num_suspensos"
echo "La nota media es: $nota_media"
