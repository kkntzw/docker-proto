FROM amd64/debian:11.3
LABEL maintainer="kkntzw"

RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    g++ \
    git \
    libtool \
    make \
    unzip \
    wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/src/

ENV PROTOC_VERSION 3.20.0
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip \
 && unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip -d protoc3 \
 && mv protoc3/bin/* /usr/local/bin/ \
 && mv protoc3/include/* /usr/local/include/

ENV GO_VERSION 1.18.1
RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz \
 && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz \
 && rm -rf /usr/local/src/*
ENV GOPATH /usr/local/go
ENV PATH ${GOPATH}/bin:$PATH
RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest \
 && go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

RUN groupadd -r protobuf \
 && useradd -g protobuf -m -r -s /bin/bash protobuf
USER protobuf

WORKDIR /home/protobuf/
