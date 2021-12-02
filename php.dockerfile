FROM php:7.4-fpm-alpine

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN docker-php-ext-install pdo pdo_mysql
