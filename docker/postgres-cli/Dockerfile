FROM alpine:latest

LABEL org.opencontainers.image.base.name="alpine:latest" \
      org.opencontainers.image.vendor="csrakowski" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Christiaan Rakowski <cs.rakowski@gmail.com>" \
      org.opencontainers.image.title="postgres-cli" \
      org.opencontainers.image.description="Simple helper container for PostgreSQL management. Includes `postgresql-client`, `wget` and `curl`" \
      org.opencontainers.image.ref.name="postgres" \
      org.opencontainers.image.version="1.0.1"


RUN apk update && \
    apk upgrade && \
    apk add --upgrade \
        postgresql-client \
        wget \
        curl && \
    rm -rf /var/cache//*

CMD [ "/bin/ash" ]
