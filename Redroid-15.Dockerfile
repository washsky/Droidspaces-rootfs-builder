FROM alpine:3.22 AS helper

RUN mkdir -p /sbin && \
    ln -s /init /sbin/init

FROM redroid/redroid:15.0.0-latest AS redroid

FROM scratch AS export

COPY --from=redroid / /
COPY --from=helper /sbin /sbin
