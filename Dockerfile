FROM ubuntu:20.10
# Bazel install instructions
RUN apt update && apt install -y curl gnupg
RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
RUN mv bazel.gpg /etc/apt/trusted.gpg.d/
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
# CTAP2-test-tool install instructions
RUN apt update && apt install -y bazel libudev-dev autotools-dev autoconf automake libtool g++ git
# Initialize Bazel
RUN bazel
WORKDIR /app
