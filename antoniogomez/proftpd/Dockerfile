FROM debian

RUN apt-get update -y
RUN apt-get install -y proftpd

COPY proftpd.conf /etc/proftpd/proftpd.conf
RUN chown root:root /etc/proftpd/proftpd.conf
#RUN chown ftp:nogroup /var/www/html/prestashop

EXPOSE 21

