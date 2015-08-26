FROM debian:wheezy
RUN apt-get update && apt-get install -y nginx-light
RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
EXPOSE 80
CMD nginx
