#!/bin/bash

<<comment
Script que nos diga por pantalla cuantos usuarios reales tiene nuestro sistema (usuarios
que tengan un directorio creado en /home), nos deje elegir de una lista el nombre de
uno de ellos, y le realice automáticamente una copia de seguridad de todo su directorio
home en /home/copiaseguridad/nombreusuario_fecha. Nombreusuario será el nombre
del usuario, y _fecha será un símbolo _ y la fecha actual del sistema. Nos referimos a
usuarios normales que tengan creado una carpeta en /home.
comment

# Numero de usuarios
# Mostramos la lista
echo -e "LISTA DE USUARIOS: \n"
users=$(ls -l /home | cut -d ' ' -f 3 | tail -n +2)
echo "$users"
echo " "

# Variable de la fecha
fecha=$(date +%Y_%m_%d)

# Comando para buscar usuario y comprobar
# si esta en la lista y asi compararlos
# Tambien pedimos el usuario del que se quiere realizar la copia con un read
read -p "Elige el usuario para realizarle la copia: " user
lista_user=$(ls -l /home | cut -d ' ' -f 3 | grep "$user")


if [ "$user" = "$lista_user" ]; then
    if ! [ -d /home/copiaseguridad ]; then
        mkdir /home/copiaseguridad
    fi
    cp -r /home/"$user" /home/copiaseguridad/"$user"_"$fecha"
else
    echo -e "\nHa habido un error al copiar la carpeta /home"
fi
