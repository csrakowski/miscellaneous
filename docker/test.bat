REM Mainline Alpine 3.18
docker build .\aspnet\ --no-cache --file .\aspnet\Dockerfile -t csrakowski/aspnet:8-alpine-dev
docker run -it --rm csrakowski/aspnet:8-alpine-dev /bin/ash

REM Mainline Alpine 3.19
docker build .\aspnet-alpine3.19\ --no-cache --file .\aspnet-alpine3.19\Dockerfile -t csrakowski/aspnet:8-alpine3.19-dev
docker run -it --rm csrakowski/aspnet:8-alpine3.19-dev /bin/ash
