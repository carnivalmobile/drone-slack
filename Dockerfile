FROM alpine:3.20.3

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD drone-slack /bin/
ENTRYPOINT ["/bin/drone-slack"]
