FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    libonig-dev vim\
  && docker-php-ext-install pdo_mysql mysqli 

COPY ./config/php/php.ini /usr/local/etc/php/