FROM golang

RUN mkdir /app

ADD . /app

WORKDIR /app

RUN go build -o main main.go

EXPOSE 8000
CMD ["/app/main"]