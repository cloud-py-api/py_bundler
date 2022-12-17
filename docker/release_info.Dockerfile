ARG DISTRO_NAME
FROM $DISTRO_NAME

COPY . /cpa

ARG BIN_NAME

RUN \
  cd /cpa && \
  chmod +x $BIN_NAME && \
  ls -la . && \
  ./$BIN_NAME --info
