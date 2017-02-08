FROM debian

RUN apt-get update -y
RUN apt-get install -y proftpd

COPY proftpd.conf /etc/proftpd/proftpd.conf
RUN chown root:root /etc/proftpd/proftpd.conf
RUN mkdir /home/usuario/ftp
RUN chown ftp:nogroup /home/usuario/ftp

EXPOSE 21

