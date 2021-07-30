FROM node:12-alpine

WORKDIR /app

### GO INSTALLATION
COPY --from=golang:1.13-alpine "/usr/local/go/" "/usr/local/go/"
ENV PATH="/usr/local/go/bin:${PATH}" GO111MODULE=on CGO_ENABLED=0 GOOS="linux" GOARCH="amd64"

COPY . .

RUN adduser GOPROJUSER -D

USER GOPROJUSER

RUN go version

VOLUME [ "/app" ]

CMD ["go", "run", "main.go"]
