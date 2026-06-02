ARG TARGETPLATFORM

FROM redroid/redroid:15.0.0-latest AS customizer

# 创建一些 Droidspaces 常用目录

RUN mkdir -p 
/run/droidspaces 
/data 
/sdcard 
/tmp

# 标记

RUN echo "Redroid Droidspaces Experiment" > /etc/droidspaces-redroid

FROM scratch AS export

COPY --from=customizer / /
