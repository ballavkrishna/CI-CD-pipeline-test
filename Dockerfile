FROM golang:1.14

WORKDIR /go/src/github-ci
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]