#!/bin/bash

<<COMMENT
Crear un script con nombre crear.sh que admita dos parámetros, el primero indicará el
nombre de un fichero, y el segundo su tamaño. 
El script creará en el directorio actual un
fichero con el nombre dado y el tamaño dado en Kilobytes. 
En caso de que no se le pase
el segundo parámetro, creará un fichero con 1.024 Kilobytes y el nombre dado. En caso
de que no se le pase ningún parámetro, creará un fichero con nombre fichero_vacio y
un tamaño de 1.024 Kilobytes.
COMMENT

if [ $# -eq 0 ]; then
    touch fichero_vacio.txt
    dd if=/dev/zero of=fichero_vacio.txt bs=1024 count=1024
elif [ ${#1} -ge 1 -a ${#2} -eq 0 ]; then
    touch "$1".txt
    dd if=/dev/zero of="$1".txt bs=1024 count=1024
elif [ ${#1} -ge 1 -a ${#2} -ge 1 ]; then
    touch "$1".txt
    dd if=/dev/zero of="$1".txt bs="$2" count=1024
fi