#!/bin/sh

apk add --no-cache \
  libtool \
  git \
  gcc \
  m4 \
  perl \
  alpine-sdk \
  autoconf \
  automake \
  cmake \
  python3-dev \
  py3-pip && \
  echo "**** Installing Patchelf ****" && \
  git clone -b 0.17.0 https://github.com/NixOS/patchelf.git && \
  cd patchelf && \
  ./bootstrap.sh && ./configure && make && make check && make install && \
  cd .. && rm -rf ./patchelf && \
  echo "**** Installing ccache ****" && \
  git clone -b v4.7.4 https://github.com/ccache/ccache.git && \
  cd ccache && \
  mkdir build && cd build && \
  cmake -DCMAKE_BUILD_TYPE=Release .. && \
  make && make install && \
  cd ../.. && rm -rf ./ccache
