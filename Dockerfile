FROM golang:1.20 AS build

ENV GO111MODULE=on
ENV GOOS=linux
ENV CGO_ENABLED=0
ENV GOARCH=amd64

COPY plugin/* /app/

RUN cd /app && \
   go mod download && \
   go build -o /app/dist/my-plugin my-plugin.go

FROM kong:alpine

COPY --from=build /app/dist/ /app/go-plugins/
