FROM spittet/php-mongodb
WORKDIR /app
ADD . /app
ENV COMPOSER_ALLOW_SUPERUSER 1
RUN php composer.phar install --ignore-platform-reqs
EXPOSE 8888
CMD ["php", "-S0:8888", "-t", "web"]
