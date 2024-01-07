FROM mcr.microsoft.com/dotnet/nightly/aspnet:8.0-alpine3.19 AS base

ENV DOTNET_JitNoMemoryBarriers=1 \
    DOTNET_SYSTEM_NET_HTTP_SOCKETSHTTPHANDLER_HTTP3SUPPORT=1 \
    DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false

# Already part of the base image, but good to keep in mind in case we change that later on
#ENV DOTNET_RUNNING_IN_CONTAINER=true

RUN apk update --no-cache \
    apk upgrade --no-cache

RUN apk add --upgrade --no-cache \
    icu-data-full \
    icu-libs \
    tzdata
