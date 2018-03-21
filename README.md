# Dockerfile for Agrometeor

built from rocker/tidyverse

## Get it by pulling from Dockerhub

```bash
$ docker pull pokyah/agrometeordocker
```

## To run the container with a simple bash command

* Make the `docker-run-agrometeor.sh` executable :

```bash
chmod a+x docker-run-agrometeor.sh
```

* Make a symbolic link to the `docker-run-agrometeor.sh` in your `/usr/bin/` folder that allow to launch it using the simple command `dagrometeor` :

```bash
sudo ln -sf /location/of/docker-run-agrometeor.sh /usr/bin/dagrometeor
```
