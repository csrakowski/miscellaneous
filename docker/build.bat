docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:9-alpine .\aspnet-9\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:8-alpine .\aspnet-8\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/postgres-cli:latest .\postgres-cli\

REM docker push csrakowski/aspnet:9-alpine
REM docker push csrakowski/aspnet:8-alpine
REM docker push csrakowski/postgres-cli:latest
