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
  nasm \
  python3-dev \
  py3-pip && \
  echo "**** Installing Patchelf ****" && \
  git clone -b 0.17.0 https://github.com/NixOS/patchelf.git && \
  cd patchelf && \
  ./bootstrap.sh && ./configure && make && make check && make install && \
  cd ..
