FROM python:3-alpine

LABEL org.opencontainers.image.base.name="python:3-alpine" \
      org.opencontainers.image.vendor="csrakowski" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Christiaan Rakowski <cs.rakowski@gmail.com>" \
      org.opencontainers.image.title="python" \
      org.opencontainers.image.description="Simple Python base image with `uv` package manager pre-installed" \
      org.opencontainers.image.ref.name="python" \
      org.opencontainers.image.version="1.0.0"

RUN apk update && \
    apk upgrade && \
    apk add --upgrade ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/*

# Disable development dependencies
ENV UV_NO_DEV=1
ENV UV_COMPILE_BYTECODE=1

WORKDIR /usr/src/app

RUN pip install --no-cache-dir uv
