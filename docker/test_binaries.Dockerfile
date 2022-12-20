ARG BASE_IMAGE
FROM $BASE_IMAGE

COPY . /cpa

ARG BIN_NAME
ARG TEST_ARGS

RUN \
  cd /cpa && \
  ls -la . && \
  ls -la cp_binaries/ && \
  chmod +x cp_binaries/$BIN_NAME && \
  ./cp_binaries/$BIN_NAME $TEST_ARGS
