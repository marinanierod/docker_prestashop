FROM debian
MAINTAINER Manuel Alcocer <manuel@alcocer.net>
RUN apt-get -y --force-yes update
RUN apt-get -y --force-yes install haproxy hatop

COPY haproxy.conf /etc/haproxy/haproxy.conf
COPY hamgr.sh /root/hamgr.sh

# Habilita el puerto 5353
EXPOSE 80 1936
# Cuando no se pasan parámetros ejecuta el script
ENTRYPOINT /root/hamgr.sh
