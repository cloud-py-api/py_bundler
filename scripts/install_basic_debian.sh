#!/bin/sh

apt-get update && apt-get install -y \
  git \
  wget \
  python3-dev \
  python3-pip \
  build-essential \
  libffi-dev \
  cmake \
  autoconf \
  automake \
  pkg-config && \
  echo "**** Installing Patchelf ****" && \
  git clone -b 0.17.0 https://github.com/NixOS/patchelf.git && \
  cd patchelf && \
  ./bootstrap.sh && ./configure && make && make check && make install && \
  cd ..
