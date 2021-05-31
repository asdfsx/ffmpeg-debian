#!/bin/sh
#docker build -f base/Dockerfile -t ffmpeg:base .
#docker build -f build-stage/Dockerfile -t ffmpeg:build-stage .
docker build -f golang/Dockerfile -t ffmpeg:golang .
docker build -f runtime/Dockerfile -t ffmpeg:runtime . 
docker build -f test/Dockerfile -t ffmpeg:test .

