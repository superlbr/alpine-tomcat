FROM openjdk:8-jre-alpine

RUN apk add --no-cache bash ttf-dejavu && \
 rm -rf /usr/share/man /tmp/* /var/cache/apk/*