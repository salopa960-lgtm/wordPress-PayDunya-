# WordPress officiel avec Apache et PHP
FROM wordpress:latest

# Installer les extensions PHP nécessaires pour MariaDB
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Définir le répertoire de travail
WORKDIR /var/www/html

# S'assurer que l'utilisateur www-data a accès aux uploads
RUN chown -R www-data:www-data wp-content/uploads \
    && chmod -R 755 wp-content/uploads

# Exposer le port web
EXPOSE 80

# Lancer Apache au démarrage
CMD ["apache2-foreground"]
