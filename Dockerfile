FROM httpd:2.4-alpine
ENV WEB_ROOT /usr/local/apache2/htdocs
COPY ./public/ "$WEB_ROOT/"
RUN rm -fv "$WEB_ROOT/index.html"
RUN chown -R www-data:www-data "$WEB_ROOT/"
