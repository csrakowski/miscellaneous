docker buildx build --provenance=true --sbom=true -t csrakowski/aspnet:8-alpine --push .
REM docker build . --file Dockerfile -t csrakowski/aspnet:8-alpine
REM docker run -it --rm csrakowski/aspnet:8-alpine /bin/ash
