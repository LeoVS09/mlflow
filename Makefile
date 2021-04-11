#!/usr/bin/env make

.PHONY: build

PROJECT_NAME=mlflow
DOCKER_IMAGE_VERSION=0.1.0
DOCKER_IMAGE_TAG=leovs09/$(PROJECT_NAME):$(DOCKER_IMAGE_VERSION)

build:
	docker build --tag $(DOCKER_IMAGE_TAG) .

default: build

start:
	docker run -it --rm -v ${PWD}/mlruns:/mlruns --name $(PROJECT_NAME) -p 5000:5000 $(DOCKER_IMAGE_TAG)

push:
	docker image push $(DOCKER_IMAGE_TAG)

console:
	docker run -it --rm -v ${PWD}/mlruns:/mlruns --name $(PROJECT_NAME) -p 5000:5000 $(DOCKER_IMAGE_TAG) bash