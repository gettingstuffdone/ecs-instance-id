FROM nginx:alpine

RUN apk update \
 && apk add --update jq \
 && apk add --update curl \
 && rm -rf /var/cache/apk/*

COPY index.html /usr/share/nginx/html
COPY bootstrap.sh /tmp/bootstrap.sh

CMD ["sh", "/tmp/bootstrap.sh"]
