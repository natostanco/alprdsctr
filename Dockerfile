FROM alpine:edge

RUN apk --update --no-cache add redis

COPY entry.sh /

VOLUME ["/var/lib/redis", "/etc/redis"]

ENTRYPOINT ["/entry.sh"]

EXPOSE 6379
