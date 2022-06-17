FROM httpd:2.4
#MAINTAINER shanky@adamtheautomator.com
#RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
COPY index.html /var/www/html/
EXPOSE 81
