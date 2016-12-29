FROM openjdk:8-jre-alpine

RUN apk add --no-cache bash ttf-dejavu tzdata && \
  # add timezone
  ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
  echo "Asia/Shanghai" > /etc/timezone  && \
  apk del tzdata  && \
  rm -rf /usr/share/man /tmp/* /var/cache/apk/*