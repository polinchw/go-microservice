FROM golang:1.9.1-alpine3.6

LABEL maintainer="William Polinchak <polinchw@gmail.com>"

# syntax=docker/dockerfile:1

WORKDIR /app

COPY go.mod ./
# COPY go.sum ./
# RUN go mod download

COPY *.go ./

RUN go build -o /go-microservice

EXPOSE 8080

CMD [ "/go-microservice" ]
