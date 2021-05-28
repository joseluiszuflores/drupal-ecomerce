FROM    debian
ENV     PORT  80
# Setting up working directoryRUN apt-get update
RUN apt-get update && apt-get -y install apache2

RUN apt-get install php -y
RUN apt-get install curl -y
RUN php -v
RUN apt-get install php-gd -y
RUN apt-get install php7.3-common
RUN apt-get install php7.3-cli

RUN apt-get  install php7.3-dom -y

RUN apt-get  install php7.3-mbstring -y

RUN apt-get  install php7.3-simplexml -y

RUN apt-get install  php7.3-curl -y

RUN apt-get install  php7.3-mysql -y

RUN phpenmod pdo_mysql



COPY www /var/www/html/

CMD ["apachectl", "-D", "FOREGROUND"]

EXPOSE 80
