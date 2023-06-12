FROM golang:1.19.2-bullseye


WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /greeter


ENV HELLO_TAG="Hi World!"
ENV VERSION=v1.20

CMD [ "/greeter" ]