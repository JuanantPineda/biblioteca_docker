# syntax=docker/dockerfile:1
FROM php:8.2-apache
RUN apt-get update && apt-get install -y mariadb-client && docker-php-ext-install pdo pdo_mysql && docker-php-ext-enable pdo pdo_mysql && a2enmod rewrite
COPY app/Sistema-de-biblioteca-basico-php-8-y-mysql /var/www/html/
COPY apache2.conf /etc/apache2/
EXPOSE 80
ENV BASE_URL http://localhost
ENV HOST mariadb
ENV USER root
ENV PASS root
ENV DB biblioteca
ENV CHARSET charset=utf8
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
COPY app/Sistema-de-biblioteca-basico-php-8-y-mysql/biblioteca.sql /opt
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
CMD /usr/local/bin/docker-entrypoint.sh