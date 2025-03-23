# Dockerfile
FROM golang:1.24-alpine

WORKDIR /app
COPY . .

RUN go build -o pod-monitor main.go

ENTRYPOINT ["./pod-monitor"]
