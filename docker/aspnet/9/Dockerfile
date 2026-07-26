FROM mcr.microsoft.com/dotnet/aspnet:9.0-alpine3.24 AS base

LABEL org.opencontainers.image.base.name="mcr.microsoft.com/dotnet/aspnet:9.0-alpine3.24" \
      org.opencontainers.image.vendor="csrakowski" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Christiaan Rakowski <cs.rakowski@gmail.com>" \
      org.opencontainers.image.title="aspnet" \
      org.opencontainers.image.description="Based on the dotnet/aspnet base image, with ICU packages added." \
      org.opencontainers.image.ref.name="9.0-alpine" \
      org.opencontainers.image.version="9.0.18"

ENV DOTNET_JitNoMemoryBarriers=1 \
    DOTNET_SYSTEM_NET_HTTP_SOCKETSHTTPHANDLER_HTTP3SUPPORT=1 \
    DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

RUN apk update && \
    apk upgrade && \
    apk add --upgrade \
        icu-data-full \
        icu-libs \
        tzdata \
        curl \
        ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/*
