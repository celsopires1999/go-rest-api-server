FROM golang:1.20.4 as builder
WORKDIR /app
COPY . .
# RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ../server -C practiceit
RUN GOOS=linux GOARCH=amd64 go build -o server -C src/practiceit
# ENTRYPOINT [ "/app/src/practiceit/server" ]


FROM ubuntu:20.04
WORKDIR /app/practiceit
COPY --from=builder /app/src/practiceit/server /app/practiceit/server
ENTRYPOINT [ "/app/practiceit/server" ]

# CMD ["tail", "-f", "/dev/null"]
