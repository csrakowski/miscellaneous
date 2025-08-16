# csrakowski/aspnet
Based on the [dotnet/aspnet](https://mcr.microsoft.com/en-us/product/dotnet/aspnet/about) base image, with ICU packages added.

Because this project is mainly targeted at my own needs, it is only available for Alpine .NET 8 and .NET 9, on AMD64 and ARM64.

Updated manually, so might lag behind the Microsoft releases a bit.

Available to pull from Docker Hub [csrakowski/aspnet](https://hub.docker.com/r/csrakowski/aspnet)

```shell
docker pull csrakowski/aspnet:9-alpine
```



# csrakowski/postgres-cli
Simple helper container for PostgreSQL management.
Includes `postgresql-client` and `curl` to allow simple and effective database maintenance activities to be automated/containerized.

Available to pull from Docker Hub [csrakowski/postgres-cli](https://hub.docker.com/r/csrakowski/postgres-cli)

```shell
docker pull csrakowski/postgres-cli:latest
```

## Usages

The default command is set to open the shell, so if you want an interactive session for manual work you can just run it.

```shell
docker run -it --rm csrakowski/postgres-cli:latest
```


You can also override the command by passing in extra arguments as normal, and use it run `pg_dump` for example.
This also works great in Kubernetes CronJobs.

```shell
docker run -it --rm csrakowski/postgres-cli:latest pg_dump -h <Hostname> -p <PORT> -U <USER> > dump.sql
```
