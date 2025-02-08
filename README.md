# Nethack Lab

Run
```shell


```

How to Use
Place both the Dockerfile and docker-compose.yml in the same directory.

Build the container with:

bash

    docker-compose build

Run the container with:

    docker-compose up

To stop the container:

    docker-compose down

This setup will ensure your NetHack save files are preserved across container restarts, using the volume mounted to /root/.nethack.
