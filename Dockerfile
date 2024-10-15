# 使用最新的 Ubuntu 基础镜像
FROM ubuntu:latest

# 设置环境变量
ENV TZ=Asia/Shanghai

FROM golang:1.23.2 AS builder
WORKDIR /go/src/github.com/YuCN0010/DeepLX
COPY . .
RUN go get -d -v ./
RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o deeplx .

FROM alpine:latest
WORKDIR /app
COPY --from=builder /go/src/github.com/YuCN0010/DeepLX/deeplx /app/deeplx
CMD ["/app/deeplx"]
