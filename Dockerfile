# syntax = docker/dockerfile:experimental

FROM golang:1.15 as builder
WORKDIR /kubeappsops
COPY ./ ./
ENV CGO_ENABLED=0 \
    GO111MODULE=on \
    GOPROXY=https://goproxy.cn,https://mirrors.aliyun.com/goproxy/,https://goproxy.io,direct
# 使用以下技巧，Go的构建缓存将保留在两个构建之间。
# 但是构建时，需要传递环境变量 DOCKER_BUILDKIT=1
# https://github.com/golang/go/issues/27719#issuecomment-514747274
# RUN --mount=type=cache,target=/opt/gopath/pkg/mod \
#     --mount=type=cache,target=/root/.cache/go-build \
#     go build .
RUN go build .
FROM alpine
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=builder /kubeappsops/kubeappsops /kubeappsops
EXPOSE 8080
CMD ["/kubeappsops"]
