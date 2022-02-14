FROM php:7.2-apache
RUN docker-php-ext-install sockets && docker-php-ext-configure sockets --enable-sockets
COPY --from=gbmcarlos/php-runtime /opt /opt
WORKDIR /var/www/html
COPY . /var/www/html
EXPOSE 80