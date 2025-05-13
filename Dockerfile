FROM nginx
# MAINTAINER Rick Broker <rbroker@digital.ai>
COPY webapp /usr/share/nginx/html
COPY nginx /etc/nginx/conf.d
