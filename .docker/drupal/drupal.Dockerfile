FROM drupal:9.5.10-php8.2-apache

# Install git, unzip
RUN apt-get update && apt-get install -y git unzip vim

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Increase composer memory limit
ENV COMPOSER_MEMORY_LIMIT -1
# Set timeout
ENV COMPOSER_PROCESS_TIMEOUT 10000

# Change Apache document root
ENV APACHE_DOCUMENT_ROOT=/opt/drupal/web
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Install Drush
# RUN composer require drush/drush