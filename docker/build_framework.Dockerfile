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
  python3 -m pip install --upgrade setuptools wheel ordered-set

RUN \
  python3 -m pip install nuitka==1.2.7


FROM base as framework

RUN \
  python3 -m pip install pynacl==1.5.0

RUN \
  python3 -m pip install cryptography==38.0.4

RUN \
  python3 -m pip install pymysql==1.0.2

RUN \
  python3 -m pip install pg8000==1.29.4

RUN \
  python3 -m pip install pillow==9.3.0

RUN \
  python3 -m pip install numpy==1.21.4

RUN \
  python3 -m pip install scipy==1.7.2
