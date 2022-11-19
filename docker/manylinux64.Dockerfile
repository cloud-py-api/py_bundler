FROM almalinux:8.6

RUN \
  dnf update -y && \
  dnf install -y \
    git \
    make \
    autoconf \
    automake \
    gcc \
    gcc-c++ \
    cmake \
    python39-devel && \
  echo "**** Installing Patchelf ****" && \
  git clone -b 0.17.0 https://github.com/NixOS/patchelf.git && \
  cd patchelf && \
  ./bootstrap.sh && ./configure && make && make check && make install && \
  cd .. && \
  python3 -m pip install --upgrade pip && \
  python3 -m pip install wheel ordered-set && \
  python3 -m pip install nuitka
