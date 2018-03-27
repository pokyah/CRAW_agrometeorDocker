# Dockerfile for Agrometeor

built from rocker/tidyverse

## Get it by pulling from Dockerhub

```bash
$ docker pull pokyah/agrometeordocker
```

## Run the container 

You can run it with a simple bash command available in this repo. Once the command is executed, open your web browser and go at http://localhost:8787. This URL will launch Rstudio. The first time you open it, you will be prompted for a login and password. The container uses the defaults settings of the [rocker/rstudio](https://hub.docker.com/r/rocker/rstudio/) image. Log in with username:password as rstudio:rstudio

### Make the `docker-run-agrometeor.sh` executable :

```bash
$ chmod a+x docker-run-agrometeor.sh
```

### Make a symbolic link

Create a folder `.local/bin` in your home directory

```bash
$ mkdir `~/.local/bin
```

### Set PATH so it includes user's private ./local/bin if it exists

```bash
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
```
### make a link to the docker-run-agrometeor.sh in ~/.local/bin

make a simlink to the `docker-run-agrometeor.sh` in your `~/.local/bin/` folder that allow to launch it using the simple command `dagrometeor` :

```bash
$ sudo ln -sf /location/of/docker-run-agrometeor.sh ~/.local/bin/dagrometeor
```

## Start it at boot

you need to execute the `dagrometeor` command [as root user at boot](https://askubuntu.com/questions/956237/run-terminal-sudo-command-at-startup) without typing password. For this, edit `/etc/local.rc` :


```bash
$ cd /etc
$ sudo nano local.rc
```

by pasting `dagrometeor` right before the line `exit0` and by making the `rc.local` file executable : 

`sudo chmod +x /etc/rc.local`


