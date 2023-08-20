#Dockerfile
FROM php:8.2-fpm

# Install extensions and dependencies
RUN apt-get update && \
    apt-get install -y libpq-dev zip unzip git && \
    docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Expose port 9000 for PHP-FPM
EXPOSE 9000