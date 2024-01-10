REM docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:8-alpine3.19 --push .\aspnet-alpine3.19\
REM docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:8-alpine --push .\aspnet\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache -t csrakowski/aspnet:8-alpine3.19-dev .\aspnet-alpine3.19\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache -t csrakowski/aspnet:8-alpine-dev .\aspnet\
