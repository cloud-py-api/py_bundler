ARG BASE_IMAGE
FROM $BASE_IMAGE

ARG BIN_NAME
COPY ./cp_binaries/$BIN_NAME /

ARG TEST_ARGS

RUN \
  ls -la . && \
  chmod +x $BIN_NAME && \
  ./$BIN_NAME $TEST_ARGS
