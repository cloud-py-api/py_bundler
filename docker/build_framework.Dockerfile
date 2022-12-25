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
  python3 -m pip install pip==22.3.1 wheel==0.38.4 ordered-set==4.1.0 && rm -rf ~/.cache


FROM base as framework

RUN \
  python3 -m pip install cryptography==38.0.4 && rm -rf ~/.cache

RUN \
  python3 -m pip install pynacl==1.5.0 && rm -rf ~/.cache

RUN \
  python3 -m pip install pymysql==1.0.2 && rm -rf ~/.cache

RUN \
  python3 -m pip install pg8000==1.29.4 && rm -rf ~/.cache

RUN \
  python3 -m pip install numpy==1.23.4 && rm -rf ~/.cache

RUN \
  python3 -m pip install scipy==1.9.3 && rm -rf ~/.cache

RUN \
  python3 -m pip install Cython==0.29.32 setuptools==64.0.3 && \
  python3 -m pip install pywavelets==1.4.1 --no-deps && rm -rf ~/.cache

RUN \
  python3 -m pip install matplotlib==3.6.2 && rm -rf ~/.cache

RUN \
  python3 -m pip install filterpy==1.4.5 && rm -rf ~/.cache

RUN \
  python3 -m pip install pillow==9.3.0 && rm -rf ~/.cache

RUN \
  if [ -f /usr/bin/apt ]; then \
    python3 -m pip install opencv-python==4.6.0.66 --no-deps && rm -rf ~/.cache; \
  fi

RUN \
  python3 -m pip install nuitka==1.2.7 && rm -rf ~/.cache

RUN \
  python3 -m pip list
