REM docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:9-alpine --push .\aspnet-9\
REM docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:8-alpine --push .\aspnet-8\
REM docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/postgres-cli:latest --push .\postgres-cli\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache -t csrakowski/aspnet:9-alpine-dev .\aspnet-9\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache -t csrakowski/aspnet:8-alpine-dev .\aspnet-8\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache -t csrakowski/postgres-cli:dev .\postgres-cli\
