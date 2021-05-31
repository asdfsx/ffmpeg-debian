FROM ffmpeg:build-stage as build-stage

FROM golang:1.16.4-buster

COPY --from=build-stage /usr/local /usr/local/
COPY --from=build-stage /opt/ffmpeg/lib/pkgconfig /usr/local/lib/pkgconfig
COPY --from=build-stage /opt/ffmpeg/bin/ffmpeg /usr/local/bin/ffmpeg
COPY --from=build-stage /opt/ffmpeg/include /usr/local/include

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    libva-drm2 \
    libva2 \
    build-essential \
    g++ \
    gcc \
    git \
    librtmp-dev \
    libavutil-dev \
    libavformat-dev \
    libavdevice-dev \
    libfribidi-dev \
    && \
	rm -rf /var/lib/apt/lists/*

ENV LD_LIBRARY_PATH=/usr/local/lib
ENV PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
