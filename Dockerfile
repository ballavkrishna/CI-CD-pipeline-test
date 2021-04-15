FROM golang:1.14

WORKDIR /home/raramuri/Desktop/learn/github-ci
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]