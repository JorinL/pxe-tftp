FROM alpine:latest

RUN apk --no-cache add dnsmasq \
&& echo "conf-dir=/etc/dnsmasq,*.conf" > /etc/dnsmasq.conf

VOLUME /etc/dnsmasq

EXPOSE 53 53/udp
EXPOSE 69 69/udp
EXPOSE 69 69/tcp


CMD ["dnsmasq"]
