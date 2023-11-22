# Stage 1: Build the application
FROM php:8.0-apache AS builder
WORKDIR /var/www/html

# Install dependencies
RUN apt-get update \
    && apt-get install -y libpq-dev libzip-dev zip \
    && docker-php-ext-install pdo pdo_pgsql pgsql mysqli zip

# Stage 2: Final image
FROM php:8.0-apache
WORKDIR /var/www/html

# Copy required files from the builder stage
COPY --from=builder /usr/local/lib/php/extensions/ /usr/local/lib/php/extensions/
COPY --from=builder /usr/local/etc/php/conf.d/ /usr/local/etc/php/conf.d/
COPY --from=builder /var/www/html /var/www/html

# Clean up unnecessary packages
# RUN apt-get purge -y --auto-remove libpq-dev libzip-dev zip \
#     && rm -rf /var/lib/apt/lists/*

# Start Apache
CMD ["apache2-foreground"]
