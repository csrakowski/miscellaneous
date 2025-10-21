FROM mcr.microsoft.com/dotnet/sdk:9.0-alpine3.22
ARG BUILD_CONFIGURATION=Release

# Labels
LABEL org.opencontainers.image.base.name="mcr.microsoft.com/dotnet/sdk:9.0-alpine3.22" \
      org.opencontainers.image.vendor="csrakowski" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Christiaan Rakowski <cs.rakowski@gmail.com>" \
      org.opencontainers.image.title="Bitbucket Pipeline Runner" \
      org.opencontainers.image.description="Helper image for BitBucket Pipelines that use Dotnet SDK and Docker" \
      org.opencontainers.image.ref.name="9.0-alpine" \
      org.opencontainers.image.version="9.0.306"

# Install base dependencies
RUN apk update && \
    apk upgrade && \
    apk add --upgrade \
        wget \
        aws-cli \
        docker-cli \
        docker-cli-buildx \
        docker-cli-compose \
        docker-credential-ecr-login \
        ca-certificates && \
    rm -rf /var/cache//*

SHELL ["/bin/sh", "-o", "pipefail", "-c"]

# Default to UTF-8 file.encoding
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8

# Create dirs and users
RUN mkdir -p /opt/atlassian/bitbucketci/agent/build
WORKDIR /opt/atlassian/bitbucketci/agent/build
ENTRYPOINT ["/bin/sh"]
