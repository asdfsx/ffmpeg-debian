FROM debian:buster-slim as base

RUN  apt-get -yqq update && \
     apt-get install -yq --no-install-recommends \
     ca-certificates \
     expat \
     libgomp1 \
     libva-drm2 \
     libva2 \
     librtmp1 \
     uuid \
     libfribidi0 && \
     apt-get autoremove -y && \
     apt-get clean -y
