FROM golang:1.9
MAINTAINER tts  "ttts"
WORKDIR $GOPATH/src/github.com/liuyh73/go-web-form
ADD . $GOPATH/src/github.com/liuyh73/go-web-form
RUN go get github.com/gorilla/mux
RUN go get github.com/codegangsta/negroni
RUN go get github.com/unrolled/render
RUN go get github.com/spf13/pflag
RUN go build .
EXPOSE 8080
ENTRYPOINT ["./go-web-form"]
