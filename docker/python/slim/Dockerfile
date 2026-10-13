FROM python:3-slim

LABEL org.opencontainers.image.base.name="python:3-slim" \
      org.opencontainers.image.vendor="csrakowski" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Christiaan Rakowski <cs.rakowski@gmail.com>" \
      org.opencontainers.image.title="python" \
      org.opencontainers.image.description="Simple Python base image with `uv` package manager pre-installed" \
      org.opencontainers.image.ref.name="python" \
      org.opencontainers.image.version="1.0.0"

RUN apt update && \
    apt full-upgrade -y && \
    apt install ca-certificates -y && \
    update-ca-certificates && \
    rm -rf /var/cache/*

# Disable development dependencies
ENV UV_NO_DEV=1
ENV UV_COMPILE_BYTECODE=1

# Source: https://github.com/docker-library/python/issues/604
# > From https://docs.python.org/3/library/sys.html#sys.stdout:
# > When interactive, the stdout stream is line-buffered. Otherwise, it is block-buffered like regular text files. The stderr stream is line-buffered in both cases. You can make both streams unbuffered by passing the -u command-line option or setting the PYTHONUNBUFFERED environment variable.
# > Changed in version 3.9: Non-interactive stderr is now line-buffered instead of fully buffered.
ENV PYTHONUNBUFFERED=1

WORKDIR /usr/src/app

RUN pip install --no-cache-dir uv
