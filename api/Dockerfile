FROM golang:1.11-alpine3.7 AS builder
COPY . /work
WORKDIR /work
RUN CGO_ENABLED=0 go build -o hello main.go

FROM busybox
COPY --from=builder /work/hello /usr/local/bin/hello
ENTRYPOINT ["/usr/local/bin/hello"]