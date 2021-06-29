.PHONY: deps test build publish

all: deps test build

deps:
	mkdir -p ./output

test:
	go test -count=1 -coverprofile=./output/golang-coverage.out ./... | tee ./output/golang-test.out

build:
	go build -o ./output/golang-artefact ./cmd/takehome

publish:
ifneq ($(shell git branch --show-current),master)
	$(error "Publish should only be run on master")
else
	echo "Published successfully"
endif
