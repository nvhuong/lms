FROM bitnami/php-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y git

# Install PHP extensions


# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www
