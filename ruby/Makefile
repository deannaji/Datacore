.PHONY: deps test build publish

RUBY_VERSION_EXPECTED = 2.7.4
RUBY_VERSION_ACTUAL = $(shell ruby --version | grep -ohE \d+\\.\d+\\.\d+)

all: deps test build

deps:
	bundle install

test:
ifneq ($(RUBY_VERSION_ACTUAL),$(RUBY_VERSION_EXPECTED))
	$(error "Incorrect ruby version, expected ${RUBY_VERSION_EXPECTED} but found ${RUBY_VERSION_ACTUAL}")
else
	rspec
endif

build:
	gem build takehome.gemspec

publish:
ifneq ($(shell git rev-parse --abbrev-ref HEAD),master)
	$(error "Publish should only be run on master")
else
	echo "Published successfully"
endif
