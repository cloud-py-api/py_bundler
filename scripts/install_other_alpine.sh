#!/bin/sh

apk add --no-cache \
  libffi-dev \
  fribidi-dev \
  harfbuzz-dev \
  jpeg-dev \
  lcms2-dev \
  openjpeg-dev \
  gfortran \
  openblas-dev

apk add --no-cache \
  py3-numpy \
  py3-scipy \
  py3-matplotlib \
  py3-opencv
