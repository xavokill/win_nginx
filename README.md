# win_nginx

**Nginx for Windows !!!**.

This repo contains a dockerfile that should allow you to build and run a full native 64 bit Windows Nanoserver image for the most famous web server at this moment, Ngnix.

It is based on the [Ngnix for windows]("http://nginx.org/en/docs/windows.html") project targeting the **Stable version 1.20.1**.

## Build

```cmd
docker build -t win_nginx .
```

## Run

```cmd
docker run -d -p <your_port>:<your_port> -v <path_to_conf_directory>:/nginx/conf:ro --name win_nginx xavierhdz/win_nginx:latest
```

## Sample

```cmd
docker run -d -p 443:443 -v c:\test\nginx\conf:/nginx/conf:ro --name win_nginx xavierhdz/win_nginx:latest
```
