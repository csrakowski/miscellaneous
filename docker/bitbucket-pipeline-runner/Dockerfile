FROM mcr.microsoft.com/dotnet/sdk:10.0-alpine3.23
ARG BUILD_CONFIGURATION=Release

# Labels
LABEL org.opencontainers.image.base.name="mcr.microsoft.com/dotnet/sdk:10.0-alpine3.23" \
      org.opencontainers.image.vendor="csrakowski" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Christiaan Rakowski <cs.rakowski@gmail.com>" \
      org.opencontainers.image.title="Bitbucket Pipeline Runner" \
      org.opencontainers.image.description="Helper image for BitBucket Pipelines that use Dotnet SDK and Docker" \
      org.opencontainers.image.ref.name="10.0-alpine" \
      org.opencontainers.image.version="10.0.103"

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
    update-ca-certificates && \
    rm -rf /var/cache//*

RUN dotnet tool install --global dotnet-reportgenerator-globaltool

RUN export PATH="$PATH:/root/.dotnet/tools" \
    && export TESTCONTAINERS_RYUK_DISABLED=true

SHELL ["/bin/sh", "-o", "pipefail", "-c"]

# Default to UTF-8 file.encoding
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    LANGUAGE=C.UTF-8

# Create dirs and users
RUN mkdir -p /opt/atlassian/bitbucketci/agent/build
WORKDIR /opt/atlassian/bitbucketci/agent/build
ENTRYPOINT ["/bin/sh"]
