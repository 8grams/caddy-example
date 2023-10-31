# final outcome
FROM gcr.io/distroless/cc-debian12
WORKDIR /app

COPY ./src /app
COPY ./Caddyfile /app/Caddyfile
COPY ./caddy/caddy_linux_amd64 /app/caddy

EXPOSE 80

CMD ["/app/caddy", "run"]