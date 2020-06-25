FROM ubuntu:14.04
MAINTAINER jhsong2580 thdwmdgns@naver.com

RUN apt update -y
RUN apt install Nginx -y 
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf 
RUN chown -R www-data:www-data /var/lib/nginx

VOLUME ["/data","/etc/nginx/site-enabled","/var/log/nginx"]

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80
EXPOSE 443

