#!/bin/bash

<<comment
Hacer un script que admita como parámetros el nombre de dos ficheros. El script debe
avisar si los parámetros pasados no existen como ficheros, o si no se le pasan
parámetros, o si solo se pasa un parámetro. Una vez comprobados que se le han pasado
dos ficheros, el script debe mostrar por pantalla el tamaño en KB de cada uno de ellos.
comment

# Se ha elegido una ruta al azar donde ir a buscar los ficheros
# que se pediran por parametro

if [ $# -ge 3 ]; then
    echo "Solo se admiten dos parametros como maximo"
elif [ $# -eq 0 ]; then
    echo "No se ha especificado ninguno de los parametros"
elif [ $# -eq 1 ]; then
    echo "Se ha especificado uno de los parametros"
else
    if [ -f /home/miguel/Escritorio/$1 ]; then
        tamanio=$(find /home/miguel -name $1 | wc -c)
        echo "$tamanio kb del primer fichero"
    else
        echo "Primer fichero no encontrado"
    fi
    
    if [ -f /home/miguel/Escritorio/$2 ]; then
        tamanio=$(find /home/miguel -name $2 | wc -c)
        echo "$tamanio kb del segundo fichero"
    else
        echo "Segundo fichero no encontrado"
    fi
fi

#fichero1=$(find /home/miguel -name $1)
#fichero2=$(find /home/miguel -name $2)