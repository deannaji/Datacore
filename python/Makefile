.PHONY: deps test build publish

PYTHON_VERSION_EXPECTED = Python 3.7.7
PYTHON_VERSION_ACTUAL = $(shell python3 --version)

all: deps test build

deps:
	mkdir -p ./output
	pip3 install --upgrade -r requirements.txt
	pipenv install

test:
ifneq ($(PYTHON_VERSION_ACTUAL),$(PYTHON_VERSION_EXPECTED))
	$(error "Incorrect python version, expected ${PYTHON_VERSION_EXPECTED} but found ${PYTHON_VERSION_ACTUAL}")
else
	nose2 -v --with-coverage --coverage takehome --coverage-report term-missing --coverage-report html tests 2>&1 | tee ./output/python-test.out
	tar czvf ./output/python-coverage.tar.gz .coverage ./htmlcov
endif

build:
	python3 setup.py sdist --dist-dir ./output bdist_wheel
	# tar czvf ./output/python-artefact.tar.gz ./takehome

publish:
ifneq ($(shell git branch --show-current),master)
	$(error "Publish should only be run on master")
else
	echo "Published successfully"
endif
