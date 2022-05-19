FROM azul/zulu-openjdk-alpine:8-jre

RUN sed -i 's/https/http/' /etc/apk/repositories && \
    apk add ttf-dejavu fontconfig && \
    apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

COPY ttf/* /usr/share/fonts/
