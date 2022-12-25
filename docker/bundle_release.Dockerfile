ARG BUILD_IMG
FROM $BUILD_IMG

COPY ./requirements.txt /

RUN \
  python3 -m pip install -r requirements.txt && rm -rf ~/.cache && \
  rm requirements.txt
