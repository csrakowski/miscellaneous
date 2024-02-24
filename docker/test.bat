REM Mainline Alpine .NET 8
docker build .\aspnet-8\ --no-cache --file .\aspnet-8\Dockerfile -t csrakowski/aspnet:8-alpine-dev
docker run -it --rm csrakowski/aspnet:8-alpine-dev /bin/ash

REM Preview Alpine .NET 9
docker build .\aspnet-9\ --no-cache --file .\aspnet-9\Dockerfile -t csrakowski/aspnet:9-alpine-dev
docker run -it --rm csrakowski/aspnet:9-alpine-dev /bin/ash
