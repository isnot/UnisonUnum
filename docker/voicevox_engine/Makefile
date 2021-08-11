ROOT_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY: build-docker
build-docker:
	docker buildx build . \
		-t voicevox_engine

.PHONY: run-docker
run-docker:
	docker run --rm -it \
		-p '127.0.0.1:50021:50021' \
		voicevox_engine

