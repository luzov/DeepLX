FROM golang:1.23.2 AS builder
WORKDIR /go/src/github.com/luzov/DeepLX
COPY . .
RUN go get -d -v ./
RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o deeplx .

FROM alpine:latest
RUN apk add --no-cache tzdata
ENV TZ=Asia/Shanghai
WORKDIR /app
COPY --from=builder /go/src/github.com/luzov/DeepLX/deeplx /app/deeplx
CMD ["/app/deeplx"]
