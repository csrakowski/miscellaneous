REM Mainline Alpine 3.18
docker build .\aspnet\ --no-cache --file .\aspnet\Dockerfile -t csrakowski/aspnet:8-alpine-dev
docker run -it --rm csrakowski/aspnet:8-alpine-dev /bin/ash

REM Nightly Alpine 3.19
docker build .\aspnet-nightly\ --no-cache --file .\aspnet-nightly\Dockerfile -t csrakowski/aspnet:8-alpine3.19-dev
docker run -it --rm csrakowski/aspnet:8-alpine3.19-dev /bin/ash
