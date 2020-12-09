# syntax = docker/dockerfile:experimental

FROM golang:1.15 as builder
WORKDIR /go/src/github.com/kubeapps/kubeapps
COPY * ./
# With the trick below, Go's build cache is kept between builds.
# https://github.com/golang/go/issues/27719#issuecomment-514747274
ENV CGO_ENABLED=0 \
    GO111MODULE=on \
    GOPROXY=https://goproxy.cn,https://mirrors.aliyun.com/goproxy/,https://goproxy.io,direct
RUN go get k8s.io/client-go@kubernetes-1.19.2 && go build .
FROM alpine
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /go/src/github.com/kubeapps/kubeapps/kubeops /kubeops
EXPOSE 8080
CMD ["/kubeops"]
