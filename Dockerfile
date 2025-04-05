# Start from an official PHP image with Apache
FROM php:8.2-apache

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy everything in your project folder into Apache's web directory
COPY . /var/www/html/

# Optional: fix permissions
RUN chown -R www-data:www-data /var/www/html
