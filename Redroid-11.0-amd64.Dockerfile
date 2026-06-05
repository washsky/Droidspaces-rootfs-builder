ARG TARGETPLATFORM

FROM --platform=linux/amd64 \
    redroid/redroid:11.0.0-latest AS customizer



FROM scratch AS export

COPY --from=customizer / /
