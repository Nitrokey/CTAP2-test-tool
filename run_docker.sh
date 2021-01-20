#!/usr/bin/env bash
command=${1:-/app/run.sh}
docker_image_name=google-ctap2-test-tool-dev
docker build . -t ${docker_image_name}
docker run -it --rm  \
	-v $PWD:/app -v /dev:/dev \
	--mount source=bazel_cache,target=/root/.cache/ \
	--privileged \
	${docker_image_name} "${command}"
