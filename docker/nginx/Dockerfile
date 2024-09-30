FROM nginx:1.21

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./conf.d/default.conf /etc/nginx/conf.d/default.conf
ADD ./conf.d/upstream.conf /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data
RUN mkdir -p /var/www/public/ \
    && touch /var/www/public/index.php

CMD ["nginx"]

EXPOSE 80
