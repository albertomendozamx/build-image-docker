FROM ubuntu:14.04
MAINTAINER Alberto Mendoza <mendozaene@gmail.com>
RUN apt-get update \
	&& apt-get -y install apache2 php5 git \ 
	&& a2enmod rewrite
WORKDIR /etc/apache2/
ADD apache2-conf.tar ./
CMD /usr/sbin/apache2ctl -D FOREGROUND
