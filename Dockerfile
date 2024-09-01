# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Install MySQL extension
RUN docker-php-ext-install mysqli

# Copy the PHP files to the Apache server's document root
COPY . /var/www/html/

# Expose port 80
EXPOSE 80
