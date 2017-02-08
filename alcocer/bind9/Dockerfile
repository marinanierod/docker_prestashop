FROM debian
MAINTAINER Manuel Alcocer <manuel@alcocer.net>
RUN apt-get -y --force-yes update
RUN apt-get -y --force-yes install bind9 dnsutils 
RUN mkdir -p /var/cache/bind/hosting
RUN chown -R bind. /var/cache/bind

# Copiar ficheros de configuración
COPY named.conf /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/
COPY zones.rfc1918 /etc/bind/
COPY db.alcocer.com /var/cache/bind/
COPY db.172.22 /var/cache/bind/
COPY bindmgr.sh /root/


# Configurar propietarios y permisos adecuadamente
RUN chown -R bind. /var/cache/bind
RUN chown :bind /etc/bind/named*
RUN chmod 755 /root/bindmgr.sh

# Habilita el puerto 5353
EXPOSE 5353
# Cuando no se pasan parámetros ejecuta el script
#ENTRYPOINT /root/bindmgr.sh
