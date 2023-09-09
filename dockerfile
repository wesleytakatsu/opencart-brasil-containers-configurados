# Use a imagem base do PHP com Apache
FROM php:7.4-apache

# Instale as extensões PHP zip e gd
RUN a2enmod rewrite

RUN set -eu && apt-get update

# Instale as extensões PHP zip e gd e outras dependências
RUN apt-get install -y \
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
    libmagickcore-dev \
    libmagickwand-dev \
    libmagick++-dev \
    libmemcached-dev \
    libmemcached11 \
    libmemcachedutil2 \
    libmemcached-tools \
    libzip-dev \
    libpq-dev \
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
    libmagickcore-dev \
    libmagickwand-dev \
    libmagick++-dev \
    libmemcached-dev \
    libmemcached11 \
    libmemcachedutil2 \
    libmemcached-tools \
    libzip-dev \
    libpq-dev \
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
    libmagickcore-dev \
    libmagickwand-dev \
    libmagick++-dev \
    libmemcached-dev \
    libmemcached11 \
    libmemcachedutil2 \
    libmemcached-tools \
    libzip-dev \
    libpq-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libxml2-dev \
    libonig-dev \
    libcurl4-openssl-dev \
    libssl-dev

# Instale as extensões PHP zip e gd
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
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
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
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
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
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
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
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
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
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
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
    mysqli \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
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
    sysvshm
    



# Copie o arquivo de configuração php.ini personalizado (se você tiver um)
COPY ./php_config/php.ini /usr/local/etc/php/php.ini

# Defina o diretório de trabalho para o diretório padrão do Apache
WORKDIR /var/www/html

# Mantenha o Apache em execução no primeiro plano
CMD ["apache2-foreground"]
