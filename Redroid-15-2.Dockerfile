FROM alpine:3.22 AS helper

FROM redroid/redroid:15.0.0-latest AS redroid

FROM scratch AS export

COPY --from=redroid / /
COPY --from=redroid /init /sbin/init
