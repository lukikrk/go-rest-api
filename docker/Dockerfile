FROM golang:1.22.6

WORKDIR /opt/app

COPY /app .

RUN go mod download
RUN go mod vendor

RUN go build -o /main

CMD ["/main"]
