ARG TARGETPLATFORM

FROM redroid/redroid:15.0.0-latest AS customizer

FROM scratch AS export

COPY --from=customizer / /
