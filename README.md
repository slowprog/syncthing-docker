## Syncthing Docker Compose

Compose config to run the [Syncthing](https://syncthing.net/) and synchronize folders with Docker volume.

### Quick Start

Create the volume:

```
docker volume create --name=data-syncthing
# or mount the partition manually, but edit the docker-compose.yml:
# - /mnt/data_syncthing:/sync
```

Clone the repository and run the container:

```
docker-compose up -d
```

More details in [the post](http://slowprog.su/syncthing-docker-compose/).