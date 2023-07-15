# Use the official MySQL 8.0 image from Docker Hub
FROM mysql:8.0

# Set the environment variable to allow root login from any host
ENV MYSQL_ROOT_HOST '%'
ENV MYSQL_ROOT_PASSWORD 'root'
# Copy custom MySQL configuration file to allow remote root login
COPY ./my.cnf /etc/mysql/conf.d/

# Expose MySQL default port
EXPOSE 3306

# By default, the entrypoint script will be executed on container startup.
# The entrypoint script will initialize the database and start the MySQL server.
# You can override the default entrypoint behavior if needed.

# Example of overriding the entrypoint to start MySQL without initializing the database:
# ENTRYPOINT ["docker-entrypoint.sh", "--skip-initdb"]
