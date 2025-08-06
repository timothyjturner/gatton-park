# Use official PHP image with Apache
FROM php:8.3-apache

# Copy all files into Apache's web root
COPY . /var/www/html/

# Give proper permissions (optional)
RUN chown -R www-data:www-data /var/www/html

# Expose the default Apache port
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
