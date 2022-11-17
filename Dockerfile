FROM golang:1.9.1-alpine3.6

LABEL maintainer="William Polinchak <polinchw@gmail.com>"

COPY . .
RUN go build -v -o /usr/local/bin/app ./...


EXPOSE 8000
CMD ["/go/bin/go-microservice"]
