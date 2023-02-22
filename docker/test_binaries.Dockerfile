ARG BASE_IMAGE
FROM $BASE_IMAGE

COPY . /cpa

ARG BIN_NAME
ARG TEST_ARGS

RUN \
  cd /cpa && \
  chmod +x $BIN_NAME/main && \
  ls -la $BIN_NAME && \
  ls -la . && \
  ./$BIN_NAME/main $TEST_ARGS
