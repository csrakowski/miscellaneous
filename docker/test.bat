REM Mainline Alpine .NET 8
docker build .\aspnet-8\ --no-cache --file .\aspnet-8\Dockerfile -t csrakowski/aspnet:8-alpine-dev
docker run -it --rm csrakowski/aspnet:8-alpine-dev /bin/ash

REM Preview Alpine .NET 9
docker build .\aspnet-9\ --no-cache --file .\aspnet-9\Dockerfile -t csrakowski/aspnet:9-alpine-dev
docker run -it --rm csrakowski/aspnet:9-alpine-dev /bin/ash

REM Preview Alpine .NET 10
docker build .\aspnet-10\ --no-cache --file .\aspnet-10\Dockerfile -t csrakowski/aspnet:10-alpine-dev
docker run -it --rm csrakowski/aspnet:10-alpine-dev /bin/ash

REM Preview Postgres CLI
docker build .\postgres-cli\ --no-cache --file .\postgres-cli\Dockerfile -t csrakowski/postgres-cli:dev
docker run -it --rm csrakowski/postgres-cli:dev pg_dump  -h postgres.imedia -p 31582 -U postgres
docker run -it --rm csrakowski/postgres-cli:dev
