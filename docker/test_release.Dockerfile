ARG DISTRO_NAME
FROM $DISTRO_NAME

COPY . /cpa

ARG CPA_NAME

RUN \
  cd /cpa && \
  ls -la . && \
  chmod +x $CPA_NAME && \
  ls -la . && \
  ./$CPA_NAME --info
