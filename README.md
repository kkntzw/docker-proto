# Docker Proto
Dockerを用いたWebアプリケーションの開発環境を構築する。  

## 前提条件
`docker`, `docker compose` が利用できる環境を想定している。  
[Docker Dev](https://github.com/kkntzw/docker-dev)の環境が構築済みであると想定している。  

## 環境構築
1. [当リポジトリをクローンする。](#当リポジトリをクローンする)
1. [コンテナを構築する。](#コンテナを構築する)

### 当リポジトリをクローンする
```bash
cd ${任意のディレクトリ}
git clone https://github.com/kkntzw/docker-proto.git
cd docker-proto
```

### コンテナを構築する
```bash
docker compose up -d --build
```

## 使用例
1. [コマンドラインから生成する。](#コマンドラインから生成する)
1. [コマンドラインから操作する。](#コマンドラインから操作する)

### コマンドラインから生成する
`./input/` に格納したファイルの定義に基づいて `./output/` にファイルを生成する。  

```bash
make generate
```

### コマンドラインから操作する
`./input/` に格納したファイル名を `${PROTO_FILE}` に指定する。  
gRPCサーバのホスト名（サービス名）を `${GRPC_SERVER}` に指定する。  

```bash
docker compose exec evans evans --proto ${PROTO_FILE} --host ${GRPC_SERVER} repl
```
