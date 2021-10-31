# Satisfactory-docker

Ready made docker Images to run a dedicated satisfactory server

## How to run the server on your machine

1. Install [Docker](https://www.docker.com/)

2. Start docker container with this command

```shell
docker run -d -p 15777:15777 -p 15000:15000 -p 7777:7777 -v ./data:/satisfactory-server ghcr.io/cvoegele/satisfactory-docker:main
```

Or:

2. Clone project and start docker-compose

```shell
git clone https://github.com/cvoegele/satisfactory-docker.git
cd satisfactory-docker
docker-compose -f docker-compose.yaml up -d
```

This is essentially the same command as above. The only difference is in the fact that the port and volume config is in the yaml and not passed via command line argments.
