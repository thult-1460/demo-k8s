FROM php:8.1-fpm

RUN apt-get update && apt-get install -y \
    libpq-dev \
    libmemcached-dev \
    curl \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libssl-dev \
    libmcrypt-dev \
    libzip-dev \
    vim \
    zlib1g-dev libicu-dev g++ \
    --no-install-recommends \
    && rm -r /var/lib/apt/lists/*

# Install extensions using the helper script
RUN docker-php-ext-install \
    bcmath \
    pdo_mysql \
    intl \
    zip

RUN usermod -u 1000 www-data

# Tạo thư mục làm việc
WORKDIR /var/www/html


CMD ["php-fpm"]

EXPOSE 9000
