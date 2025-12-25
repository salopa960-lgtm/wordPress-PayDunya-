# MariaDB officiel
FROM mariadb:latest

# Définir le répertoire de travail
WORKDIR /var/lib/mysql

# Exposer le port MySQL
EXPOSE 3306
