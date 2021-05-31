# golang build-stage
FROM ffmpeg:golang as build-stage

RUN git clone https://github.com/giorgisio/goav.git /go/src/github.com/giorgisio/goav
WORKDIR /go/src/github.com/giorgisio/goav/example
RUN go build ./versions.go
RUN go build ./tutorial01.go

RUN git clone https://github.com/3d0c/gmf.git /go/src/github.com/3d0c/gmf
WORKDIR /go/src/github.com/3d0c/gmf/examples
RUN go build ./video-to-image.go

# runtime
FROM ffmpeg:runtime

COPY --from=build-stage /go/src/github.com/giorgisio/goav/example /goav_examples
COPY --from=build-stage /go/src/github.com/3d0c/gmf/examples/video-to-image /gmf_examples/video-to-image
COPY --from=build-stage /go/src/github.com/3d0c/gmf/examples/tests-sample.mp4 /gmf_examples/tests-sample.mp4
WORKDIR /goav_examples
RUN ./versions
WORKDIR /gmf_examples
RUN ./video-to-image
