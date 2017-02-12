FROM debian
MAINTAINER Alvaro Rodriguez <alvarorodmar94@gmail.com>

#RUN apt-get install apt-utils
RUN apt-get -y --force-yes update
RUN apt-get install -y memcached

EXPOSE 11211
CMD ["-u", "root", "-m", "128"]
USER daemon
ENTRYPOINT memcached
