FROM alpine:3.19
RUN apk add --no-cache curl bash
COPY scripts/healthcheck.sh /usr/local/bin/healthcheck.sh
RUN chmod +x /usr/local/bin/healthcheck.sh
ENTRYPOINT ["healthcheck.sh"]