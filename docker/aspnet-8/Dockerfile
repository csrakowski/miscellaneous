FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine3.23 AS base

LABEL org.opencontainers.image.base.name="mcr.microsoft.com/dotnet/aspnet:8.0-alpine3.23" \
      org.opencontainers.image.vendor="csrakowski" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Christiaan Rakowski <cs.rakowski@gmail.com>" \
      org.opencontainers.image.title="aspnet" \
      org.opencontainers.image.description="Based on the dotnet/aspnet base image, with ICU packages added." \
      org.opencontainers.image.ref.name="8.0-alpine" \
      org.opencontainers.image.version="8.0.22"

ENV DOTNET_JitNoMemoryBarriers=1 \
    DOTNET_SYSTEM_NET_HTTP_SOCKETSHTTPHANDLER_HTTP3SUPPORT=1 \
    DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

# Already part of the base image, but good to keep in mind in case we change that later on
#ENV DOTNET_RUNNING_IN_CONTAINER=true

RUN apk update && \
    apk upgrade && \
    apk add --upgrade \
    icu-data-full \
    icu-libs \
    tzdata && \
    rm -rf /var/cache//*
