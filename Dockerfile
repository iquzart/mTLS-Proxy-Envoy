FROM envoyproxy/envoy-alpine:v1.14.1

LABEL Maintainer="Muhammed Iqbal <iquzart@hotmail.com>"

COPY envoy-front.yaml /etc/envoy/envoy-front.yaml

# Add Certificates for mTLS
RUN mkdir -p /etc/certs
COPY ./*.crt /etc/certs
COPY ./*.key /etc/certs


CMD /usr/local/bin/envoy -c /etc/envoy/envoy-front.yaml