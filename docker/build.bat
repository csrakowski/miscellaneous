docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:10-alpine .\aspnet-10\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:9-alpine .\aspnet-9\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/aspnet:8-alpine .\aspnet-8\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/postgres-cli:latest .\postgres-cli\
docker buildx build --platform linux/amd64,linux/arm64 --no-cache --provenance=true --sbom=true -t csrakowski/bitbucket-pipeline-runner:latest .\bitbucket-pipeline-runner\

REM docker push csrakowski/aspnet:10-alpine
REM docker push csrakowski/aspnet:9-alpine
REM docker push csrakowski/aspnet:8-alpine
REM docker push csrakowski/postgres-cli:latest
REM docker push csrakowski/bitbucket-pipeline-runner:latest
