FROM rust:latest
LABEL authors="Jake Stanger <mail@jstanger.dev>"

WORKDIR /app
COPY . .

RUN cargo install --path .
RUN rm -rf /app

ENV HOST=0.0.0.0
ENV PORT=5050

EXPOSE $PORT

ENTRYPOINT ["corn-api"]