FROM golang:alpine

WORKDIR /go/

COPY greeter.go .

EXPOSE 80

ENV HELLO_TAG="Hi World!"
ENV VERSION=v1.20

CMD [  "go", "run", "greeter.go" ]