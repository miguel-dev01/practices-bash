#!/bin/bash

<<comment
Crear un script llamado cuenta_atras.sh que nos pida dos números cualesquiera, deberá
mostrar por pantalla todos los números entre el mayor de los dos introducidos y el
menor. (Así si introducimos 20 1 nos mostrará los números del 20 al 1, si introducimos
56 89 nos mostrará los números del 89 al 56).
comment

read -p "Introduce primer numero: " num1
read -p "Introduce segundo numero: " num2

mayor=0
menor=0

if [ "$num2" -le "$num1" ] ; then
    mayor=$num2
    menor=$num1
elif [ "$num1" -le "$num2" ]; then
    mayor=$num1
    menor=$num2
fi

for ((i="$menor"; i>="$mayor"; i--)) do
    echo $i
done
