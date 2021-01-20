#!/usr/bin/env bash
docker run -it --rm  -v $PWD:/app --privileged -v /dev:/dev bazel "/app/run.sh"
