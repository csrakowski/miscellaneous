REM docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:8-alpine --push .
REM docker buildx build --platform linux/amd64,linux/arm64 --no-cache -t csrakowski/aspnet:8-alpine-dev .
docker build .  --no-cache --file Dockerfile -t csrakowski/aspnet:8-alpine-dev
docker run -it --rm csrakowski/aspnet:8-alpine-dev /bin/ash
