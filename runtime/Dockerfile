FROM ffmpeg:build-stage as build-stage

FROM ffmpeg:base

COPY --from=build-stage /usr/local /usr/local/
COPY --from=build-stage /opt/ffmpeg/lib/pkgconfig /usr/local/lib/pkgconfig
COPY --from=build-stage /opt/ffmpeg/bin/ffmpeg /usr/local/bin/ffmpeg
COPY --from=build-stage /opt/ffmpeg/include /usr/local/include

ENV LD_LIBRARY_PATH=/usr/local/lib
ENV PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
