#!/bin/bash

<<comment
Script que nos diga por pantalla: Nuestra dirección IP es : xxx.xxx.xxx.xxx
comment

ip=$(ifconfig | grep 'inet ' -m 1 | cut -d ' ' -f 10)

echo "$ip"