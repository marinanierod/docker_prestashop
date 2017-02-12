FROM debian

RUN apt-get update -y
RUN apt-get install -y proftpd

COPY proftpd.conf /etc/proftpd/proftpd.conf
RUN chown root:root /etc/proftpd/proftpd.conf
COPY ftpmgr.sh /root
RUN chmod +x /root/ftpmgr.sh
#RUN chown ftp:nogroup /var/www/html/prestashop

EXPOSE 21
ENTRYPOINT /root/ftpmgr.sh
