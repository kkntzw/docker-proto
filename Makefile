generate:
	@docker compose exec pb protoc --proto_path=./input/ --go_out=./output/ --go-grpc_out=./output/ ./input/*.proto
