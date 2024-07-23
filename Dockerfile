FROM golang:1.18-alpine
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . ./

ENV PORT=3003
RUN go build -o /capybaraapi

EXPOSE 3003

CMD ["/capybaraapi"]
