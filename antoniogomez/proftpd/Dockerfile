FROM debian

RUN apt-get update -y
RUN apt-get install -y proftpd

ADD proftpd.conf /etc/proftpd/proftpd.conf
RUN sudo chown root:root /etc/proftpd/proftpd.conf
RUN mkdir /home/usuario/ftp
RUN sudo chown ftp:nogroup /home/usuario/ftp

EXPOSE 21

