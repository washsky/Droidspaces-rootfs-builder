ARG TARGETPLATFORM

FROM --platform=linux/arm64 redroid/redroid:15.0.0-latest AS customizer

RUN mkdir -p /run/droidspaces

FROM scratch AS export

COPY --from=customizer / /
