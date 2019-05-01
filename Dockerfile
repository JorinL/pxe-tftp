FROM alpine:latest

RUN apk --no-cache add dnsmasq

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp
EXPOSE 69 69/udp
EXPOSE 69 69/tcp


ENTRYPOINT ["dnsmasq", "-k"]
