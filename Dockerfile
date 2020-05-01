FROM envoyproxy/envoy-alpine:v1.14.1

LABEL Maintainer="Muhammed Iqbal <iquzart@hotmail.com>"

COPY envoy-front.yaml /etc/envoy/envoy-front.yaml

CMD /usr/local/bin/envoy -c /etc/envoy/envoy-front.yaml