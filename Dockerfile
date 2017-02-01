#version 1

FROM library/debian
MAINTAINER Aida Alvarez <aida.alvarez88@gmail.com>
RUN echo 'nameserver 10.27.100.1' > /etc/resolv.conf && \
apt-get update && apt-get install -y apache2 && \
/etc/init.d/apache2 start
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
