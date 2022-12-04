#!/bin/sh

yum -y install \
  libffi-devel \
  wget && \
  wget -q https://www.openssl.org/source/openssl-1.1.1s.tar.gz && \
  tar -xzf openssl-1.1.1s.tar.gz && \
  cd openssl-1.1.1s && \
  ./config no-shared --prefix=/usr/local/ssl --openssldir=/usr/local/ssl && \
  make && make install_sw && \
  cd .. && \
  wget https://www.python.org/ftp/python/3.9.15/Python-3.9.15.tgz && \
  tar xvf Python-3.9.15.tgz && \
  cd Python-3.9.15 && \
  ./configure --with-openssl=/usr/local/ssl --enable-optimizations && \
  make install && \
  cd ..
