FROM amd64/debian:11.0
LABEL maintainer="kkntzw"

ENV PROTOC_VERSION 3.19.3
ENV GO_VERSION 1.17.6

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

RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip \
 && unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip -d protoc3 \
 && mv protoc3/bin/* /usr/local/bin/ \
 && mv protoc3/include/* /usr/local/include/

RUN wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz \
 && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz \
 && rm -rf /usr/local/src/*

ENV PATH /usr/local/go/bin:/root/go/bin:$PATH

RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest \
 && go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

WORKDIR /var/tmp/
