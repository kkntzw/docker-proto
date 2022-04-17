generate:
	@docker compose exec protobuf protoc --proto_path=./input/ --go_out=./output/ --go-grpc_out=./output/ ./input/*.proto
