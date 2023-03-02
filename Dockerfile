FROM alpine:3.17.2

RUN apk add --update bash && rm -rf /var/cache/apk/*

COPY ./docker-entrypoint.sh /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]