FROM alpine:latest

#COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*

#COPY ./app /usr/share/nginx/html
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/

CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
