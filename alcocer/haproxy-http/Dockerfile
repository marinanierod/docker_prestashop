FROM debian
LABEL maintainer Manuel Alcocer <manuel@alcocer.net>
RUN apt-get -y --force-yes update
RUN apt-get -y --force-yes install haproxy hatop

COPY haproxy.conf /etc/haproxy/haproxy.conf
COPY hamgr.sh /root/hamgr.sh
RUN chmod +x /root/hamgr.sh

EXPOSE 80
ENTRYPOINT /root/hamgr.sh
