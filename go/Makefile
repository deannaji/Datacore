.PHONY: deps test build publish

GOLANG_VERSION_EXPECTED = go1.15.7
GOLANG_VERSION_ACTUAL = $(shell go version)

all: deps test build

deps:
	mkdir -p ./output

test:
ifeq (,$(findstring $(GOLANG_VERSION_EXPECTED),$(GOLANG_VERSION_ACTUAL)))
	$(error "Incorrect golang version, expected ${GOLANG_VERSION_EXPECTED} but found ${GOLANG_VERSION_ACTUAL}")
else
	go test -count=1 -coverprofile=./output/golang-coverage.out ./... | tee ./output/golang-test.out
endif

build:
	go build -o ./output/golang-artefact ./cmd/takehome

publish:
ifneq ($(shell git branch --show-current),master)
	$(error "Publish should only be run on master")
else
	echo "Published successfully"
endif
