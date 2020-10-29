FROM debian
MAINTAINER Najib Alejandro Loera Rodriguez 

ARG DOCUMENTROOT=/var/www/html
ARG SERVER_NAME=_

ENV DOCUMENTROOT=$DOCUMENTROOT
ENV SERVER_NAME=$SERVER_NAME

COPY index.html $DOCUMENTROOT/index.html
COPY init.sh /init.sh

RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var>
RUN chmod 700 /init.sh

EXPOSE 80
