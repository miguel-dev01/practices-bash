#!/bin/bash

<<comment
Modificar el ejercicio anterior para que antes de crear el fichero compruebe que no
exista. En caso de que exista avisará del hecho por pantalla y creará el fichero pero
añadiéndole un 1 al final del nombre (aguado1, por ejemplo). Si también existe un
fichero con ese nombre, lo creará con un 2 al final del nombre, así seguiremos hasta
intentar el 9. Si también existe un fichero con 9 al final del nombre, avisará del hecho y
no creará nada.
comment

if [ $# -gt 2 ]; then
	echo "Demasiados parámetros"
else
	if [ $# -eq 0 ]; then
	 	NOMBRE_FICHERO="fichero_vacio"
	else
 		NOMBRE_FICHERO=$1
 	fi
 	CONT=0
 	NOMBRE=$NOMBRE_FICHERO
 	while [ $CONT -lt 10 ] && [ -f $NOMBRE ]; do
 		let CONT=CONT+1
 		NOMBRE=$NOMBRE_FICHERO$CONT
 	
 	done
 	echo $NOMBRE
 	if [ $CONT -ge 10 ]; then
 		echo "Ya hay 10 ficheros con el mismo nombre"
 	else
 		if [ $# -eq 2 ]; then
 			TM=$2
 		else
 			TM=1024
 	fi
 	
 	dd if=/dev/zero of=$NOMBRE bs=$TM count=1024 ;
	
	fi
 	
 fi