FROM debian
MAINTAINER Antonio Gomez <antoniomgomezvarela@gmail.com>
#Actualizamos e instalamos proftpd
RUN apt-get update -y
RUN apt-get install -y proftpd

RUN chsh -s /bin/bash www-data
RUN printf 'www-data\nwww-data\n' | passwd www-data
#Copiamos proftpd.conf y le cambiamos el usuario y grupo al fichero.
COPY proftpd.conf /etc/proftpd/proftpd.conf
RUN chown root:root /etc/proftpd/proftpd.conf
#Copiamos el fichro ftpmgr.sh y le damos permiso de ejecución.
COPY ftpmgr.sh /root
RUN chmod +x /root/ftpmgr.sh
#Crea una regla de iptable para el puerto 21.
EXPOSE 21
ENTRYPOINT /usr/sbin/proftpd -n
