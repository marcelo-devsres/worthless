FROM golang:alpine3.13 as builder

RUN apk update && apk add --no-cache git
ENV USER=worthless
ENV UID=10001 
RUN adduser \    
    --disabled-password \    
    --gecos "" \    
    --home "/nonexistent" \    
    --shell "/sbin/nologin" \    
    --no-create-home \    
    --uid "${UID}" \    
    "${USER}"
WORKDIR $GOPATH/src/github.com/dev-sres/worthless
COPY . .
COPY cmd/worthless/main.go .
RUN go get -d -v
RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/worthless

# Final
# FROM scratch
FROM tcu
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group
COPY --from=builder /go/bin/worthless /go/bin/worthless
USER worthless:worthless
ENTRYPOINT ["/go/bin/worthless"]
