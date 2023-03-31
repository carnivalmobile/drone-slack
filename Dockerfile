FROM alpine:3.14

RUN apk update && \
  apk add \
    ca-certificates && \
  rm -rf /var/cache/apk/*

ADD drone-slack /bin/
ENTRYPOINT ["/bin/drone-slack"]
