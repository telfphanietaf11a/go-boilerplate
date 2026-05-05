.PHONY: build test clean run

build:
	@echo "Building go-boilerplate..."
	go build -o bin/go-boilerplate ./cmd/...

test:
	go test ./... -v -cover

clean:
	rm -rf bin/ dist/

run: build
	./bin/go-boilerplate
