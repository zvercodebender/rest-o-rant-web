FROM nginx
MAINTAINER Vincent Partington <vpartington@xebialabs.com>
COPY webapp /usr/share/nginx/html
COPY nginx /etc/nginx/conf.d
