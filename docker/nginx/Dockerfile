FROM nginx:1.23.0

ADD docker/nginx/nginx.conf /etc/nginx/nginx.conf
ADD docker/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
ADD docker/nginx/conf.d/upstream.conf /etc/nginx/conf.d/default.conf

RUN usermod -u 1000 www-data
RUN mkdir -p /var/www/public/ \
    && touch /var/www/public/index.php

CMD ["nginx"]

EXPOSE 80
