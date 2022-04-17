FROM golang:1.18.1
LABEL maintainer="kkntzw"

RUN go install github.com/ktr0731/evans@latest

RUN groupadd -r evans \
 && useradd -g evans -m -r -s /bin/bash evans
USER evans

WORKDIR /home/evans/proto/
