#!/usr/bin/env make

.PHONY: build

PROJECT_NAME=mlflow
DOCKER_IMAGE_VERSION=1.14.1
DOCKER_IMAGE_TAG=leovs09/$(PROJECT_NAME):$(DOCKER_IMAGE_VERSION)

build:
	docker build --tag $(DOCKER_IMAGE_TAG) .

default: build

start:
	docker-compose up

push:
	docker image push $(DOCKER_IMAGE_TAG)

console:
	docker-compose run --rm --service-ports mlflow bash