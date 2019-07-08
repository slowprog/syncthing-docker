FROM linuxserver/syncthing:latest

COPY ./docker-entrypoint.sh /

ENTRYPOINT "/docker-entrypoint.sh"