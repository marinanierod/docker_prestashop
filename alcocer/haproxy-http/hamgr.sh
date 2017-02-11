#!/usr/bin/env bash

/usr/sbin/haproxy -f /etc/haproxy/haproxy.conf -Ds

CHOICE='foo'
while [[ ${CHOICE,,} != 'salir' ]]; do
        printf "Escribe 'salir' para terminar el contenedor, o bien, 'docker stop <contenedor>'\n"
        read -p 'haproxy hosting cmd: ' CHOICE
done
killall haproxy
