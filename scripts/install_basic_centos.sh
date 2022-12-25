#!/bin/sh

OPENSSL_VER=1.1.1s
PYTHON_VER=3.10.9

yum -y install \
  libffi-devel \
  wget && \
  echo "**** Installing OpenSSL ****" && \
  wget -q https://www.openssl.org/source/openssl-$OPENSSL_VER.tar.gz && \
  tar -xzf openssl-$OPENSSL_VER.tar.gz && rm openssl-$OPENSSL_VER.tar.gz && \
  cd openssl-$OPENSSL_VER && \
  ./config no-shared --prefix=/usr/local/ssl --openssldir=/usr/local/ssl && \
  make && make install_sw && \
  cd .. && rm -rf openssl-$OPENSSL_VER && \
  echo "**** Installing Python ****" && \
  wget https://www.python.org/ftp/python/$PYTHON_VER/Python-$PYTHON_VER.tgz && \
  tar -xf Python-$PYTHON_VER.tgz && rm Python-$PYTHON_VER.tgz && \
  cd Python-$PYTHON_VER && \
  ./configure --with-openssl=/usr/local/ssl --enable-optimizations && \
  make install && \
  cd .. && rm -rf Python-$PYTHON_VER && \
  echo "**** Installing ccache ****" && \
  git clone -b v4.7.4 https://github.com/ccache/ccache.git && \
  cd ccache && \
  mkdir build && cd build && \
  cmake -DCMAKE_BUILD_TYPE=Release .. && \
  make && make install && \
  cd ../.. && rm -rf ./ccache
