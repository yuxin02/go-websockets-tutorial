FROM golang:1.13.1-alpine3.10
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go mod download
RUN go build -o main ./...
CMD ["/app/main"]