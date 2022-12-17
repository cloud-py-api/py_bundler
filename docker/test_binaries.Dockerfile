ARG BASE_IMAGE
FROM $BASE_IMAGE

COPY . /cpa

ARG BIN_NAME
ARG TEST_ARGS

RUN \
  cd /cpa && \
  ls -la . && \
  chmod +x $BIN_NAME && \
  ./$BIN_NAME $TEST_ARGS
