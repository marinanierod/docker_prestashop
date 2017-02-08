#!/usr/bin/env bash

/usr/sbin/named -u bind

CHOICE='foo'
while [[ ${CHOICE,,} != 'salir' ]]; do
        printf "Escribe 'salir' para terminar el contenedor, o bien, 'docker stop <contenedor>'\n"
        read -p 'Bind9 hosting cmd: ' CHOICE
done
