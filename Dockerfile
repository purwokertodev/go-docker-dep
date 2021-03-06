FROM golang:1.8.3-alpine

WORKDIR /go/src/github.com/purwokertodev/go-docker-dep

# Add the source code
ENV SRC_DIR=/go/src/github.com/purwokertodev/go-docker-dep/

ENV BUILD_PACKAGES="git curl"

ADD . $SRC_DIR

RUN apk update && apk add --no-cache $BUILD_PACKAGES \
  && curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh \
  && dep ensure \
  && apk del $BUILD_PACKAGES

# Copy environment variable to source dir
# COPY .env $SRC_DIR.env

RUN cd $SRC_DIR; CGO_ENABLED=0 GOOS=linux go build -ldflags '-w -s' -a -o main

ENTRYPOINT ["./main"]
