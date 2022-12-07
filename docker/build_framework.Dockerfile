ARG BUILD_IMG
FROM $BUILD_IMG as base

ARG BASE_INIT_1
COPY ./$BASE_INIT_1 /install_basic.sh
RUN \
  chmod +x /install_basic.sh && \
  /install_basic.sh && \
  rm /install_basic.sh

ARG BASE_INIT_2
COPY ./$BASE_INIT_2 /install_other.sh
RUN \
  chmod +x /install_other.sh && \
  /install_other.sh && \
  rm /install_other.sh

RUN \
  python3 -m pip install --upgrade pip && \
  python3 -m pip install --upgrade setuptools wheel ordered-set && \
  python3 -m pip install --upgrade nuitka


FROM base as framework

RUN \
  python3 -m pip install numpy==1.21.4 pillow==9.3.0 nc_py_api==0.0.6

RUN \
  python3 -m pip install scipy==1.7.2
