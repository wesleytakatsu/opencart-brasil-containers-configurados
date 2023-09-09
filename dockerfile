# Use a imagem base do PHP com Apache
FROM php:7.4-apache

# Habilitar mod_rewrite do Apache
RUN a2enmod rewrite

# Instale as extensões PHP e outras dependências
RUN apt-get update && apt-get install -y \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libxml2-dev \
    libonig-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libpq-dev \
    libicu-dev \
    libxslt-dev \
    libmagickwand-dev \
    imagemagick \
    libmemcached-dev \
    libmemcached11 \
    libmemcachedutil2 \
    libmemcached-tools

# Instale as extensões PHP
RUN docker-php-ext-install \
    zip \
    gd \
    mbstring \
    pdo \
    pdo_mysql \
    pdo_pgsql \
    mysqli \
    curl \
    xml \
    intl \
    xsl \
    soap \
    bcmath \
    opcache \
    sockets \
    exif \
    pcntl \
    gettext \
    calendar \
    shmop \
    sysvmsg \
    sysvsem \
    sysvshm \
    pgsql

# Copie o arquivo de configuração php.ini personalizado (se você tiver um)
COPY ./php_config/php.ini /usr/local/etc/php/php.ini

# Defina o diretório de trabalho para o diretório padrão do Apache
WORKDIR /var/www/html

# Mantenha o Apache em execução no primeiro plano
CMD ["apache2-foreground"]
