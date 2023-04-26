#!/bin/bash

<<comment
Hacer un script que nos diga por pantalla buenos días, buenas tardes o buenas noches
según la hora del sistema. (Elegir vosotros las horas de día, tardes y noches)
comment

hour=$(date | cut -d ' ' -f 5 | cut -d ':' -f1)
mensaje=""

if [ "$hour" -ge 7 ] && [ "$hour" -le 14 ]; then
    mensaje="Buenos dias"
elif [ "$hour" -ge 15 ] && [ "$hour" -le 22 ]; then
    mensaje="Buenas tardes"
elif [ "$hour" -ge 23 ] && [ "$hour" -le 6 ]; then
    mensaje="Buenas noches"
fi

echo "$mensaje"
