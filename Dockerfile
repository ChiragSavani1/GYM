FROM php:8.2-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Optional: Set index.php as the default landing page
RUN echo "DirectoryIndex index.php" >> /etc/apache2/apache2.conf

# Copy project files
COPY . /var/www/html/
