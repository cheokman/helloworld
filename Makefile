
.PHONY: grpc
# generate grpc code
grpc:
	 protoc --proto_path=. \
           --proto_path=./third_party \
           --go_out=paths=source_relative:. \
           --go-grpc_out=paths=source_relative:. \
           ./helloworld/helloworld.proto

.PHONY: http
# generate http code
http:
	protoc --proto_path=. \
         --proto_path=./third_party \
         --go_out=paths=source_relative:. \
         --go-http_out=paths=source_relative:. \
        ./helloworld/helloworld.proto

.PHONY: proto
# generate internal proto struct
proto:
	protoc --proto_path=. \
           --proto_path=./third_party \
           --go_out=paths=source_relative:. \
           ./helloworld/helloworld.proto


.PHONY: api
# generate api proto
api: grpc http