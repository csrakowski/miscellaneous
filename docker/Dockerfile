FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine AS base
#ENV DOTNET_RUNNING_IN_CONTAINER=true
ENV DOTNET_JitNoMemoryBarriers=1
ENV DOTNET_SYSTEM_NET_HTTP_SOCKETSHTTPHANDLER_HTTP3SUPPORT=1
RUN apk update --no-cache \
    apk upgrade --no-cache
RUN apk add --upgrade --no-cache icu-data-full icu-libs
