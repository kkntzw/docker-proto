# docker-proto
Protocol Buffers 向けの Docker を用いた開発環境

## 前提条件
`docker`, `docker-compose` が使える環境を想定している。  

## 環境構築
1. [当リポジトリを Clone する。](#当リポジトリを-clone-する)
1. [コンテナを構築する。](#コンテナを構築する)

### 当リポジトリを Clone する
```bash
cd ${任意のディレクトリ}
git clone https://github.com/kkntzw/docker-proto.git
cd docker-proto
```

### コンテナを構築する
```bash
docker-compose up -d --build
```

## 生成
1. [コマンドラインから生成する。](#コマンドラインから生成する)

### コマンドラインから生成する
```bash
make generate
```

## 操作
1. [コマンドラインから操作する。](#コマンドラインから操作する)

### コマンドラインから操作する
`${PROTO_FILE}` にはファイル名を指定する。  
`${GRPC_SERVER}` にはgRPCサーバのホスト名を指定する。  

```bash
docker compose exec evans evans --proto ${PROTO_FILE} --host ${GRPC_SERVER} repl
```
