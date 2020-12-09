# syntax = docker/dockerfile:experimental

FROM golang:1.15 as builder
WORKDIR /kubeappsops
COPY ./ ./
# With the trick below, Go's build cache is kept between builds.
# https://github.com/golang/go/issues/27719#issuecomment-514747274
ENV CGO_ENABLED=0 \
    GO111MODULE=on \
    GOPROXY=https://goproxy.cn,https://mirrors.aliyun.com/goproxy/,https://goproxy.io,direct
RUN go build .
FROM alpine
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /kubeappsops/kubeappsops /kubeappsops
EXPOSE 8080
CMD ["/kubeappsops"]
